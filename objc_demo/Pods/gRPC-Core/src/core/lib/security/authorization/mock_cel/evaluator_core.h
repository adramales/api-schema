// Copyright 2020 gRPC authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef GRPC_CORE_LIB_SECURITY_AUTHORIZATION_MOCK_CEL_EVALUATOR_CORE_H
#define GRPC_CORE_LIB_SECURITY_AUTHORIZATION_MOCK_CEL_EVALUATOR_CORE_H

#include <grpc/support/port_platform.h>

#include <memory>
#include <set>
#include <vector>

#if COCOAPODS==1
  #include  "src/core/ext/upb-generated/google/api/expr/v1alpha1/syntax.upb.h"
#else
  #include  "google/api/expr/v1alpha1/syntax.upb.h"
#endif
#include "src/core/lib/security/authorization/mock_cel/activation.h"
#include "src/core/lib/security/authorization/mock_cel/cel_expression.h"
#include "src/core/lib/security/authorization/mock_cel/cel_value.h"
#include "src/core/lib/security/authorization/mock_cel/statusor.h"

namespace grpc_core {
namespace mock_cel {

// This is a temporary stub implementation of CEL APIs.
// Once gRPC imports the CEL library, this file will be removed.

class ExpressionStep {
 public:
  virtual ~ExpressionStep() = default;
};

using ExecutionPath = std::vector<std::unique_ptr<const ExpressionStep>>;

// Implementation of the CelExpression that utilizes flattening
// of the expression tree.
class CelExpressionFlatImpl : public CelExpression {
  // Constructs CelExpressionFlatImpl instance.
  // path is flat execution path that is based upon
  // flattened AST tree. Max iterations dictates the maximum number of
  // iterations in the comprehension expressions (use 0 to disable the upper
  // bound).
 public:
  CelExpressionFlatImpl(const google_api_expr_v1alpha1_Expr* root_expr,
                        ExecutionPath path, int max_iterations,
                        std::set<std::string> iter_variable_names,
                        bool enable_unknowns = false,
                        bool enable_unknown_function_results = false) {}

  // Implementation of CelExpression evaluate method.
  StatusOr<CelValue> Evaluate(const BaseActivation& activation) const override {
    return CelValue::CreateNull();
  }
};

}  // namespace mock_cel
}  // namespace grpc_core

#endif  // GRPC_CORE_LIB_SECURITY_AUTHORIZATION_MOCK_CEL_EVALUATOR_CORE_H