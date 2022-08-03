// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application";

import HelloController from "./hello_controller.js";
application.register("hello", HelloController);

import MaskingController from "./masking_controller.js";
application.register("masking", MaskingController);

import ModalController from "./modal_controller.js";
application.register("modal", ModalController);

import NestedFormController from "./nested_form_controller.js";
application.register("nested-form", NestedFormController);

import UserInputValidationController from "./user_input_validation_controller.js";
application.register("user-input-validation", UserInputValidationController);