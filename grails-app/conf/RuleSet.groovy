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
ruleset {

    description '''
        A Sample Groovy RuleSet containing all CodeNarc Rules, grouped by category.
        You can use this as a template for your own custom RuleSet.
        Just delete the rules that you don't want to include.
        '''

    // rulesets/basic.xml
    AddEmptyString
    AssignmentInConditional
    //BigDecimalInstantiation
    //BooleanGetBoolean
    BooleanMethodReturnsNull
    BrokenOddnessCheck
    //Bug sur la 0.14 de codenarc a réactiver ensuite
	//CloneableWithoutClone
    CompareToWithoutComparable
    ConfusingTernary
    ConsecutiveLiteralAppends
    ConsecutiveStringConcatenation
    ConstantIfExpression
    ConstantTernaryExpression
    DeadCode
    DoubleNegative
    DuplicateCaseStatement
    EmptyCatchBlock
    EmptyElseBlock
    EmptyFinallyBlock
    EmptyForStatement
    EmptyIfStatement
    EmptyInstanceInitializer
    EmptyMethod
    EmptyStaticInitializer
    EmptySwitchStatement
    EmptySynchronizedStatement
    EmptyTryBlock
    EmptyWhileStatement
    EqualsAndHashCode
    //ExplicitArrayListInstantiation
    ExplicitCallToAndMethod
    //ExplicitCallToCompareToMethod
    ExplicitCallToDivMethod
    ExplicitCallToEqualsMethod
    ExplicitCallToGetAtMethod
    ExplicitCallToLeftShiftMethod
    ExplicitCallToMinusMethod
    ExplicitCallToModMethod
    ExplicitCallToMultiplyMethod
    ExplicitCallToOrMethod
    ExplicitCallToPlusMethod
    ExplicitCallToPowerMethod
    ExplicitCallToRightShiftMethod
    ExplicitCallToXorMethod
    ExplicitGarbageCollection
    ExplicitHashMapInstantiation
    ExplicitHashSetInstantiation
    ExplicitLinkedListInstantiation
    ExplicitStackInstantiation
    ExplicitTreeSetInstantiation
    GStringAsMapKey
    GroovyLangImmutable
    IntegerGetInteger
    //InvertedIfElse
    RemoveAllOnSelf
    ReturnFromFinallyBlock
    ReturnsNullInsteadOfEmptyArray
    ReturnsNullInsteadOfEmptyCollection
    SerialVersionUID
    //SerializableClassMustDefineSerialVersionUID
    //SimpleDateFormatMissingLocale
    ThrowExceptionFromFinallyBlock
    
    // rulesets/braces.xml
    ElseBlockBraces
    ForStatementBraces
    IfStatementBraces
    WhileStatementBraces
    
    // rulesets/concurrency.xml
    BusyWait
    DoubleCheckedLocking
    InconsistentPropertyLocking
    InconsistentPropertySynchronization
    NestedSynchronization
    StaticCalendarField
    StaticDateFormatField
    StaticMatcherField
    SynchronizedMethod
    SynchronizedOnBoxedPrimitive
    SynchronizedOnGetClass
    SynchronizedOnReentrantLock
    SynchronizedOnString
    SynchronizedOnThis
    SynchronizedReadObjectMethod
    SystemRunFinalizersOnExit
    ThreadGroup
    ThreadLocalNotStaticFinal
    ThreadYield
    UseOfNotifyMethod
    VolatileArrayField
    VolatileLongOrDoubleField
    WaitOutsideOfWhileLoop
    
    // rulesets/design.xml
    AbstractClassWithoutAbstractMethod
    CloseWithoutCloseable
    ConstantsOnlyInterface
    EmptyMethodInAbstractClass
    FinalClassWithProtectedMember
    ImplementationAsType
    
    // rulesets/dry.xml
    //DuplicateNumberLiteral
    //DuplicateStringLiteral
    
    // rulesets/exceptions.xml
    CatchArrayIndexOutOfBoundsException
    CatchError
    CatchException
    CatchIllegalMonitorStateException
    CatchIndexOutOfBoundsException
    CatchNullPointerException
    CatchRuntimeException
    CatchThrowable
    ConfusingClassNamedException
    ExceptionExtendsError
    MissingNewInThrowStatement
    ReturnNullFromCatchBlock
    ThrowError
    ThrowException
    ThrowNullPointerException
    ThrowRuntimeException
    ThrowThrowable
    
    // rulesets/generic.xml
    IllegalRegex
    RequiredRegex
    //StatelessClass
    
    // rulesets/grails.xml
    //GrailsPublicControllerMethod
    GrailsServletContextReference
    GrailsSessionReference
    GrailsStatelessService
    
    // rulesets/imports.xml
    DuplicateImport
    ImportFromSamePackage
    UnnecessaryGroovyImport
    UnusedImport
    
    // rulesets/logging.xml
    LoggerForDifferentClass
    LoggerWithWrongModifiers
    LoggingSwallowsStacktrace
    MultipleLoggers
    PrintStackTrace
    Println
    SystemErrPrint
    SystemOutPrint
    
    // rulesets/junit.xml
    ChainedTest
    CoupledTestCase
    JUnitAssertAlwaysFails
    JUnitAssertAlwaysSucceeds
    JUnitFailWithoutMessage
    JUnitPublicNonTestMethod
    JUnitSetUpCallsSuper
    JUnitStyleAssertions
    JUnitTearDownCallsSuper
    JUnitTestMethodWithoutAssert
    JUnitUnnecessarySetUp
    JUnitUnnecessaryTearDown
    UnnecessaryFail
    UseAssertEqualsInsteadOfAssertTrue
    UseAssertFalseInsteadOfNegation
    UseAssertNullInsteadOfAssertEquals
    UseAssertSameInsteadOfAssertTrue
    UseAssertTrueInsteadOfAssertEquals
    UseAssertTrueInsteadOfNegation
    
    // rulesets/naming.xml
    AbstractClassName
    ClassName
    ConfusingMethodName
    FieldName
    InterfaceName
    MethodName
    ObjectOverrideMisspelledMethodName
    PackageName
    ParameterName
    PropertyName
    VariableName
    
    // rulesets/size.xml
    ClassSize
    MethodCount
    MethodSize
    NestedBlockDepth
    
    // rulesets/unnecessary.xml
    //UnnecessaryBigDecimalInstantiation
    UnnecessaryBigIntegerInstantiation
    UnnecessaryBooleanExpression
    UnnecessaryBooleanInstantiation
    UnnecessaryCallForLastElement
    UnnecessaryCallToSubstring
    UnnecessaryCatchBlock
    UnnecessaryCollectCall
    UnnecessaryCollectionCall
    UnnecessaryConstructor
    //UnnecessaryDefInMethodDeclaration
    UnnecessaryDoubleInstantiation
    UnnecessaryFloatInstantiation
    //UnnecessaryGString
    //UnnecessaryGetter
    UnnecessaryIfStatement
    UnnecessaryInstantiationToGetClass
    UnnecessaryIntegerInstantiation
    UnnecessaryLongInstantiation
    UnnecessaryModOne
    UnnecessaryNullCheck
    UnnecessaryNullCheckBeforeInstanceOf
    //UnnecessaryObjectReferences
    UnnecessaryOverridingMethod
    //UnnecessaryPublicModifier
    //UnnecessaryReturnKeyword
    UnnecessarySelfAssignment
    UnnecessarySemicolon
    UnnecessaryStringInstantiation
    UnnecessaryTernaryExpression
    //UnnecessaryTransientModifier
    
    // rulesets/unused.xml
    UnusedArray
    UnusedObject
    UnusedPrivateField
    UnusedPrivateMethod
    UnusedPrivateMethodParameter
    UnusedVariable
}