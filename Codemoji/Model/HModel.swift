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

    static let mockData: [MockHModel] = [
        MockHModel(codingLanguage: "HTML", sectionName: "What are <p> tags", description: "The <p> tag defines a paragraph. Browsers automatically add a single blank line before and after each <p> element."),
        MockHModel(codingLanguage: "HTML", sectionName: "What are <h> tags", description: "The <h1> to <h6> tags are used to define HTML headings. <h1> defines the most important heading. <h6> defines the least important heading. Note: Only use one <h1> per page - this should represent the main heading/subject for the whole page. Also, do not skip heading levels - start with <h1>, then use <h2>, and so on."),
        MockHModel(codingLanguage: "CSS", sectionName: "What is CSS Selector", description: "CSS selectors are used to target the HTML elements on which you want to apply specific styles. A CSS selector can be an element selector, class selector, ID selector, or other types of selectors."),
        MockHModel(codingLanguage: "CSS", sectionName: "What are CSS Properties", description: "CSS properties define the visual appearance of HTML elements. They control things like colors, fonts, margins, padding, and more."),
        MockHModel(codingLanguage: "JavaScript", sectionName: "What is a Variable", description: "In JavaScript, variables are used to store data values. A variable can hold different types of data, such as numbers, strings, or objects."),
        MockHModel(codingLanguage: "JavaScript", sectionName: "What is a Function", description: "A function in JavaScript is a block of code that can be defined and then executed whenever needed. Functions are a way to organize and reuse code."),
    ]
}
