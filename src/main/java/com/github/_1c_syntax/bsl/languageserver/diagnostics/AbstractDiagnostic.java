/*
 * This file is a part of BSL Language Server.
 *
 * Copyright © 2018-2020
 * Alexey Sosnoviy <labotamy@gmail.com>, Nikita Gryzlov <nixel2007@gmail.com> and contributors
 *
 * SPDX-License-Identifier: LGPL-3.0-or-later
 *
 * BSL Language Server is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * BSL Language Server is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with BSL Language Server.
 */
package com.github._1c_syntax.bsl.languageserver.diagnostics;

import com.github._1c_syntax.bsl.languageserver.context.DocumentContext;
import com.github._1c_syntax.bsl.languageserver.diagnostics.metadata.DiagnosticInfo;
import org.eclipse.lsp4j.Diagnostic;

import java.util.List;

public abstract class AbstractDiagnostic implements BSLDiagnostic {

  protected final DiagnosticInfo info;
  protected DiagnosticStorage diagnosticStorage = new DiagnosticStorage(this);

  public AbstractDiagnostic(DiagnosticInfo info) {
    this.info = info;
  }

  @Override
  public DiagnosticInfo getInfo() {
    return info;
  }

  @Override
  public List<Diagnostic> getDiagnostics(DocumentContext documentContext) {
    diagnosticStorage.clearDiagnostics();
    check(documentContext);
    return diagnosticStorage.getDiagnostics();
  }

  protected abstract void check(DocumentContext documentContext);
}