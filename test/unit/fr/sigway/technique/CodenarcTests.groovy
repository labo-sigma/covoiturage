/*Sigway - covoiturage
 Copyright (C) 2012 - Teddy Poingt
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>*/
package fr.sigway.technique

import static org.junit.Assert.*

import grails.test.mixin.*
import grails.test.mixin.support.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
class CodenarcTests {
	private static final GROOVY_FILES = '**/*.groovy'
	private static final RULESET_FILES = "file:grails-app/conf/RuleSet.groovy"

    void setUp() {
        // Setup logic here
    }

    void tearDown() {
        // Tear down logic here
    }


    void testRunCodeNarc() {
        def ant = new AntBuilder()

        ant.taskdef(name:'codenarc', classname:'org.codenarc.ant.CodeNarcTask')

        ant.codenarc(ruleSetFiles:RULESET_FILES,
           maxPriority1Violations:0, maxPriority2Violations:5) {

           fileset(dir:'src/groovy') {
               include(name:GROOVY_FILES)
           }
           fileset(dir:'src/groovy') {
               include(name:GROOVY_FILES)
           }
           fileset(dir:'grails-app/domain') {
               include(name:GROOVY_FILES)
           }
		   fileset(dir:'grails-app/controllers') {
			   include(name:GROOVY_FILES)
		   }
			/*fileset(dir:'grails-app/jobs') {
				include(name:GROOVY_FILES)
			}*/
			fileset(dir:'grails-app/services') {
				include(name:GROOVY_FILES)
				exclude(name:'**/DataHelperService.groovy')
		   }
		   fileset(dir:'grails-app/taglib') {
			   include(name:GROOVY_FILES)
		   }
		   fileset(dir:'grails-app/utils') {
			   include(name:GROOVY_FILES)
		   }
		  /* fileset(dir:'grails-app/conf') {
			   include(name:GROOVY_FILES)
		   }*/
		   
		   report(type:'html') {                  // Report type is 'html'
			   option(name:'outputFile', value:'target/test-reports/CodeNarcReport.html')
			   option(name:'title', value:'Codenarc Report')
		   }
		   report(type:'xml') {                  // Report type is 'xml'
			   option(name:'outputFile', value:'target/test-reports/CodeNarcReport.xml')
			   option(name:'title', value:'Codenarc Report')
		   }

           /*report(type:'text') {
               option(name:'writeToStandardOut', value:true)
           }*/
        }
    }
}
