// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{not} %{carbon-run-parser}
// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'DeclaredName', text: 'F'},
// CHECK:STDOUT:       {kind: 'ParameterListEnd', text: ')'},
// CHECK:STDOUT:     {kind: 'ParameterList', text: '(', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:         {kind: 'NameReference', text: 'a'},
// CHECK:STDOUT:         {kind: 'NameReference', text: 'b'},
// CHECK:STDOUT:       {kind: 'InfixOperator', text: 'or', subtree_size: 3},
// CHECK:STDOUT:       {kind: 'NameReference', text: 'c'},
// CHECK:STDOUT:     {kind: 'InfixOperator', text: 'and', has_error: yes, subtree_size: 5},
// CHECK:STDOUT:   {kind: 'ExpressionStatement', text: ';', subtree_size: 6},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 12},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn F() {
  // CHECK:STDERR: {{.*}}/toolchain/parser/testdata/operators/fail_missing_precedence_or_and.carbon:[[@LINE+1]]:10: Parentheses are required to disambiguate operator precedence.
  a or b and c;
}
