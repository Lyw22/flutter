// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of stocks;

enum StockMode { optimistic, pessimistic }
enum BackupMode { enabled, disabled }

class StockConfiguration {
  StockConfiguration({
    this.stockMode,
    this.backupMode,
    this.debugShowGrid,
    this.debugShowSizes,
    this.showPerformanceOverlay
  }) {
    assert(stockMode != null);
    assert(backupMode != null);
    assert(debugShowGrid != null);
    assert(debugShowSizes != null);
    assert(showPerformanceOverlay != null);
  }

  final StockMode stockMode;
  final BackupMode backupMode;
  final bool debugShowGrid;
  final bool debugShowSizes;
  final bool showPerformanceOverlay;

  StockConfiguration copyWith({
    StockMode stockMode,
    BackupMode backupMode,
    bool debugShowGrid,
    bool debugShowSizes,
    bool showPerformanceOverlay
  }) {
    return new StockConfiguration(
      stockMode: stockMode ?? this.stockMode,
      backupMode: backupMode ?? this.backupMode,
      debugShowGrid: debugShowGrid ?? this.debugShowGrid,
      debugShowSizes: debugShowSizes ?? this.debugShowSizes,
      showPerformanceOverlay: showPerformanceOverlay ?? this.showPerformanceOverlay
    );
  }
}