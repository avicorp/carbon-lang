// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{carbon-run-parser}
// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'DeclaredName', text: 'F'},
// CHECK:STDOUT:       {kind: 'ParameterListEnd', text: ')'},
// CHECK:STDOUT:     {kind: 'ParameterList', text: '(', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:       {kind: 'NameReference', text: 'a'},
// CHECK:STDOUT:       {kind: 'ConditionEnd', text: ')'},
// CHECK:STDOUT:     {kind: 'Condition', text: '(', subtree_size: 3},
// CHECK:STDOUT:       {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:           {kind: 'NameReference', text: 'b'},
// CHECK:STDOUT:           {kind: 'ConditionEnd', text: ')'},
// CHECK:STDOUT:         {kind: 'Condition', text: '(', subtree_size: 3},
// CHECK:STDOUT:           {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:               {kind: 'NameReference', text: 'c'},
// CHECK:STDOUT:               {kind: 'ConditionEnd', text: ')'},
// CHECK:STDOUT:             {kind: 'Condition', text: '(', subtree_size: 3},
// CHECK:STDOUT:               {kind: 'CodeBlockStart', text: '{'},
// CHECK:STDOUT:                 {kind: 'NameReference', text: 'd'},
// CHECK:STDOUT:               {kind: 'ExpressionStatement', text: ';', subtree_size: 2},
// CHECK:STDOUT:             {kind: 'CodeBlock', text: '}', subtree_size: 4},
// CHECK:STDOUT:           {kind: 'IfStatement', text: 'if', subtree_size: 8},
// CHECK:STDOUT:         {kind: 'CodeBlock', text: '}', subtree_size: 10},
// CHECK:STDOUT:       {kind: 'IfStatement', text: 'if', subtree_size: 14},
// CHECK:STDOUT:     {kind: 'CodeBlock', text: '}', subtree_size: 16},
// CHECK:STDOUT:   {kind: 'IfStatement', text: 'if', subtree_size: 20},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 26},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn F() {
  if (a) {
    if (b) {
      if (c) {
        d;
      }
    }
  }
}
