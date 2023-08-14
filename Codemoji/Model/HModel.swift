//
//  HModel.swift
//  Codemoji
//
//  Created by Bryan Gomez on 8/8/23.
//
import Foundation

struct MockHModel: Identifiable {
    var id = UUID()
    var codingLanguage: String
    var sectionName: String
    var description: String
    var photo: String?
    
    static let mockData: [MockHModel] = [
        MockHModel(codingLanguage: "HTML", sectionName: "What are <p> tags", description: "The <p> tag defines a paragraph. Browsers automatically add a single blank line before and after each <p> element.", photo: "html"),
        MockHModel(codingLanguage: "HTML", sectionName: "What are <h> tags", description: "The <h1> to <h6> tags are used to define HTML headings. <h1> defines the most important heading. <h6> defines the least important heading. Note: Only use one <h1> per page - this should represent the main heading/subject for the whole page. Also, do not skip heading levels - start with <h1>, then use <h2>, and so on.", photo: "html2"),
        MockHModel(codingLanguage: "CSS", sectionName: "What is CSS Selector", description: "CSS selectors are used to target the HTML elements on which you want to apply specific styles. A CSS selector can be an element selector, class selector, ID selector, or other types of selectors.", photo: "css"),
        MockHModel(codingLanguage: "CSS", sectionName: "What are CSS Properties", description: "CSS properties define the visual appearance of HTML elements. They control things like colors, fonts, margins, padding, and more.", photo: "css2"),
        MockHModel(codingLanguage: "JavaScript", sectionName: "What is a Variable", description: "In JavaScript, variables are used to store data values. A variable can hold different types of data, such as numbers, strings, or objects.", photo: "js"),
        MockHModel(codingLanguage: "JavaScript", sectionName: "What is a Function", description: "A function in JavaScript is a block of code that can be defined and then executed whenever needed. Functions are a way to organize and reuse code.", photo: "js2"),
        MockHModel(codingLanguage: "HTML", sectionName: "What is the <a> tag", description: "The <a> tag is used to create hyperlinks. It is an anchor element that can link to another web page, file, email address, or other URLs.", photo: "html3"),
        MockHModel(codingLanguage: "HTML", sectionName: "What are HTML Forms", description: "HTML forms are used to collect user input. They can contain various types of form elements such as text fields, checkboxes, radio buttons, and submit buttons.", photo: "html4"),
        MockHModel(codingLanguage: "CSS", sectionName: "What is Box Model", description: "The CSS box model describes the layout and spacing of an element. It consists of content, padding, border, and margin areas.", photo: "css3"),
        MockHModel(codingLanguage: "CSS", sectionName: "What are Pseudo-classes", description: "Pseudo-classes in CSS are used to define the special state of an element, such as when a user hovers over or clicks on it.", photo: "css4"),
        MockHModel(codingLanguage: "JavaScript", sectionName: "What are JavaScript Events", description: "JavaScript events are actions that can trigger specific JavaScript code to run. Common events include clicks, mouse movements, and keyboard interactions.", photo: "js3"),
        MockHModel(codingLanguage: "JavaScript", sectionName: "What is DOM Manipulation", description: "DOM manipulation in JavaScript involves dynamically modifying the content and structure of a web page after it has loaded.", photo: "js4"),
    ]
}
