@isTest
public with sharing class Calculator_Tests {

    @testSetup
    static void loadTestData()
    {
        Integer a = 10;
        Integer b = 20;
        Integer c = 0;
    }
    
    @isTest
    public static void  addition_test() {
        Integer a = 10;
        Integer b = 20;
        
        Test.startTest();
        Integer c = 0;
        // test addition
        c = Calculator.addition(a, b);        
        Test.stopTest();

        System.system.assertEquals(c,a+b,'Result Should be a+b');
    }

    @isTest
    public static void  subtraction_test() {
        Integer a = 30;
        Integer b = 20;
        Test.startTest();
        Integer c = 0;
        // test subtraction
        c = Calculator.subtraction(a, b);
        Test.stopTest();
        
        System.system.assertEquals(c,a-b,'Result Should be a-b');
    }

    @isTest
    public static void  multiply_test() {
        Integer a = 10;
        Integer b = 20;
        
        Test.startTest();
        Integer c = 0;
        // test multiply
        c = Calculator.multiply(a, b);
        Test.stopTest();
        
        System.system.assertEquals(c,a*b,'Result Should be a x b');
    }

    @isTest
    public static void  multiplyNegative_test() {
        Integer a = 0;
        Integer b = 0;
        
        Test.startTest();
        Integer c = 0;
        Boolean exce = false;        
        try{
            c = Calculator.multiply(a, b);
        } catch (Calculator.CalculatorException ex){
            if(ex.getMessage().equalsIgnoreCase('It doesn\'t make sense to multiply by zero')){
              exce = true;
            }
        }        
        Test.stopTest();
        system.assertNotEquals(null, exce, 'expected at least one exce to have occured');
    }

    @isTest
    public static void  divide_test() {
        Integer a = 100;
        Integer b = 20;
        
        Test.startTest();
        Decimal c = 0;
        // test divide
        c = Calculator.divide(a, b);
        Test.stopTest();
        
        System.system.assertEquals(c,a/b,'Result Should be a / b');
    }

    @isTest
    public static void  divideNegative_test1() {
        Integer a = 1;
        Integer b = 0;
       
        Test.startTest();
        Decimal c = 0;
        Boolean exce = false;        
        try{
            c = Calculator.divide(a, b);
        } catch (Calculator.CalculatorException ex){
            if(ex.getMessage().equalsIgnoreCase('you still can\'t divide by zero')){
              exce = true;
            }
        }        
        Test.stopTest();
        system.assertNotEquals(null, exce, 'expected at least one exce to have occured');
    }

    @isTest
    public static void  divideNegative_test2() {
        Integer a = 100;
        Integer b = -10;
        
        Test.startTest();
        Decimal c = 0;
        Boolean exce = false ;        
        try{
            c = Calculator.divide(a, b);
        } catch (Calculator.CalculatorException ex){
            if(ex.getMessage().equalsIgnoreCase('Division returned a negative value.'+c)){
              exce = true;
            }
        }        
        Test.stopTest();
        system.assertNotEquals(null, exce, 'expected at least one exce to have occured');
    }
}