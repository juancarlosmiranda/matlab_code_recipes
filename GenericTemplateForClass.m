classdef GenericTemplateForClass
    %GENERICTEMPLATEFORCLASS a description of my class
    % 
    % Author: https://github.com/juancarlosmiranda/
    % Date: November 2020
    %
    % Based on https://es.mathworks.com/discovery/object-oriented-programming.html
    %
    % Generic template, this is an snippet to remember how to create a
    % Matlab class OOP paradigm. This tray to show a minimal template.
    % 
    % Some useful links:
    %
    % * "display in Matlab comments of functions or methods of classes in the console". https://es.mathworks.com/matlabcentral/answers/158399-display-in-matlab-comments-of-functions-or-methods-of-classes-in-the-console
    % * "Matlab programming style guidelines." http://www.datatool.com/downloads/MatlabStyle2%20book.pdf
    % * "MATLAB Programming Style Guide". https://sites.google.com/site/matlabstyleguidelines/
    % 
    % Here how to get help for this class from command line
    % >> help GenericTemplateForClass
    % 

    properties
        Property_1;
        Property_2;
    end
    
    methods
        function obj = GenericTemplateForClass()
            fprintf('\n Constructor-> GenericTempleteForClass');
            % initialize object properties
        end        
        % ----------------------
        
        function outputResult = method_1(obj)
            % METHOD_1
            % Here how to get help for this method, it is a template
            % from command line:
            % >> help GenericTemplateForClass            
            fprintf('\n -------------------------------- \n');
            fprintf('\n Template method_1() \n');
            fprintf('\n -------------------------------- \n');            
            % -------------------------------------
            outputResult = 0;
        end
        
        function outputParameter = methodWithParameters(obj, parameter_1, parameter_2)
            % METHODWITHPARAMETERS
            % This is a method to to show how to get parameters and return
            % results from this method.
            % call from command line:
            % >> help GenericTemplateForClass.methodWithParameters
            %
            %
            fprintf('\n -------------------------------- \n');
            fprintf('\n Template methodWithParameters() \n');
            fprintf('\n -------------------------------- \n');
            result = parameter_1 + parameter_2;
            obj.Property_1 = result;
            fprintf('\n obj.Property_1 saved-> %f \n', obj.Property_1);            
            outputParameter = result;
        end        
        
        % -----------------------
    end
    methods(Static)
        function Main()
            % MAIN
            % An static method like Java class method main()
            % >> help GenericTemplateForClass.Main()
            %
            clc, clear all, close all;
            fprintf('\n -------------------------------- \n');
            fprintf('MAIN Static Method');
            fprintf('\n -------------------------------- \n');
            % instantiate an object of GenericTemplateForClass()
            a_object = GenericTemplateForClass();
            % call to a method
            a_object.method_1();
            % get result from method
            obtainedResult = a_object.methodWithParameters(1, 2);
            fprintf('obtainedResult = %f', obtainedResult);
            % 
        end        
    end
end

