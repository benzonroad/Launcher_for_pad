.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/android/launcher2/CellLayout;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mExpandability:[I

.field private mItemInfo:Lcom/android/launcher2/ItemInfo;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragLayer;)V
    .locals 9
    .parameter "context"
    .parameter "itemInfo"
    .parameter "widgetView"
    .parameter "cellLayout"
    .parameter "dragLayer"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    .line 58
    const/16 v5, 0x96

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 59
    const/16 v5, 0x18

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 60
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 61
    const v5, 0x3f28f5c3

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    move-object v5, p1

    .line 74
    check-cast v5, Lcom/android/launcher2/Launcher;

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 75
    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mItemInfo:Lcom/android/launcher2/ItemInfo;

    .line 76
    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    .line 77
    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 78
    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    .line 79
    iput-object p5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 80
    const v5, 0x7f06001b

    invoke-virtual {p5, v5}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Workspace;

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 82
    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 83
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher2/Launcher;->getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v4

    .line 84
    .local v4, result:[I
    const/4 v5, 0x0

    aget v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    .line 85
    const/4 v5, 0x1

    aget v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    .line 87
    const v5, 0x7f0200ba

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 88
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 91
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 92
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v6, 0x7f0200bc

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x13

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 95
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 98
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v6, 0x7f0200bd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x15

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 101
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 104
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v6, 0x7f0200be

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x31

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 107
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 110
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v6, 0x7f0200bb

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x51

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 113
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 117
    .local v3, p:Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 118
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 119
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 120
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 123
    const/4 v5, 0x3

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    .line 124
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    .line 125
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    .line 127
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 128
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 136
    .local v0, density:F
    const/high16 v5, 0x41c0

    mul-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 137
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 138
    return-void

    .line 130
    .end local v0           #density:F
    :cond_1
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 131
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resizeWidgetIfNeeded()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    const v11, 0x3f28f5c3

    .line 220
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v10

    add-int v7, v9, v10

    .line 221
    .local v7, xThreshold:I
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v10

    add-int v8, v9, v10

    .line 223
    .local v8, yThreshold:I
    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v10, v7

    div-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v10, v10

    sub-float v3, v9, v10

    .line 224
    .local v3, hSpanIncF:F
    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 226
    .local v6, vSpanIncF:F
    const/4 v2, 0x0

    .line 227
    .local v2, hSpanInc:I
    const/4 v5, 0x0

    .line 228
    .local v5, vSpanInc:I
    const/4 v0, 0x0

    .line 229
    .local v0, cellXInc:I
    const/4 v1, 0x0

    .line 231
    .local v1, cellYInc:I
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_0

    .line 232
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 234
    :cond_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-lez v9, :cond_1

    .line 235
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 238
    :cond_1
    if-nez v2, :cond_2

    if-nez v5, :cond_2

    .line 291
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 244
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 248
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v9, :cond_9

    .line 249
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v13

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 250
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 251
    mul-int/lit8 v2, v2, -0x1

    .line 252
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v13

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 253
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 254
    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 261
    :cond_3
    :goto_1
    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v9, :cond_a

    .line 262
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v14

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 263
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 264
    mul-int/lit8 v5, v5, -0x1

    .line 265
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    aget v9, v9, v14

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 266
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 267
    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 275
    :cond_4
    :goto_2
    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v9, :cond_6

    .line 276
    :cond_5
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v2

    iput v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 277
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v9, v0

    iput v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 280
    :cond_6
    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_8

    .line 281
    :cond_7
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v9, v5

    iput v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 282
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/2addr v9, v1

    iput v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 286
    :cond_8
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v11, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 289
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 290
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_0

    .line 255
    :cond_9
    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v9, :cond_3

    .line 256
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 257
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 258
    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_1

    .line 268
    :cond_a
    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_4

    .line 269
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 270
    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v9, v10

    neg-int v9, v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 271
    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto :goto_2
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 142
    .local v1, horizontalActive:Z
    :goto_0
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v2, v3

    .line 143
    .local v2, verticalActive:Z
    :goto_1
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_5

    if-eqz v1, :cond_5

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 145
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p2, v5, :cond_6

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p2, v5, :cond_7

    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 148
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_8

    :cond_0
    move v0, v3

    .line 151
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    .line 155
    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 156
    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 158
    if-eqz v0, :cond_1

    .line 159
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 160
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 161
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_b

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 162
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_c

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 166
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #verticalActive:Z
    :cond_2
    move v1, v4

    .line 141
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v2, v4

    .line 142
    goto/16 :goto_1

    .restart local v2       #verticalActive:Z
    :cond_4
    move v5, v4

    .line 143
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 144
    goto/16 :goto_3

    :cond_6
    move v5, v4

    .line 145
    goto :goto_4

    :cond_7
    move v5, v4

    .line 146
    goto :goto_5

    :cond_8
    move v0, v4

    .line 148
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    :cond_9
    move v3, v7

    .line 159
    goto :goto_7

    :cond_a
    move v3, v7

    .line 160
    goto :goto_8

    :cond_b
    move v3, v7

    .line 161
    goto :goto_9

    :cond_c
    move v6, v7

    .line 162
    goto :goto_a
.end method

.method public commitResizeForDelta(II)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 300
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 301
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mItemInfo:Lcom/android/launcher2/ItemInfo;

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;IIII)V

    .line 303
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    .line 306
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 24
    .parameter "animate"

    .prologue
    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 315
    .local v5, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v20

    sub-int v16, v19, v20

    .line 316
    .local v16, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v20

    sub-int v18, v19, v20

    .line 318
    .local v18, yOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 320
    .local v7, newWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 323
    .local v6, newHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    add-int v8, v19, v20

    .line 324
    .local v8, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    add-int v9, v19, v20

    .line 327
    .local v9, newY:I
    if-gez v9, :cond_0

    .line 328
    neg-int v0, v9

    move/from16 v19, v0

    sub-int v6, v6, v19

    .line 329
    const/4 v9, 0x0

    .line 331
    :cond_0
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 332
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    sub-int v6, v6, v19

    .line 335
    :cond_1
    if-nez p1, :cond_2

    .line 336
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 337
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    iput v8, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 339
    iput v9, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 373
    :goto_0
    return-void

    .line 346
    :cond_2
    const-string v19, "width"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 347
    .local v14, width:Landroid/animation/PropertyValuesHolder;
    const-string v19, "height"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v6, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 349
    .local v3, height:Landroid/animation/PropertyValuesHolder;
    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v8, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 350
    .local v15, x:Landroid/animation/PropertyValuesHolder;
    const-string v19, "y"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 351
    .local v17, y:Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    const/16 v20, 0x2

    aput-object v15, v19, v20

    const/16 v20, 0x3

    aput-object v17, v19, v20

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 352
    .local v10, oa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 353
    .local v4, leftOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 354
    .local v11, rightOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 355
    .local v13, topOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 356
    .local v2, bottomOa:Landroid/animation/ObjectAnimator;
    new-instance v19, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 362
    .local v12, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 363
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v13, v19, v20

    const/16 v20, 0x2

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 370
    :goto_1
    const-wide/16 v19, 0x96

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 371
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 364
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 365
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 367
    :cond_4
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    const/16 v20, 0x3

    aput-object v13, v19, v20

    const/16 v20, 0x4

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public updateDeltas(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 175
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 176
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 182
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 183
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 184
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 189
    :cond_1
    :goto_1
    return-void

    .line 177
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 179
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 185
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 187
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 198
    .local v0, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 199
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 200
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 206
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 207
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 212
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 214
    return-void

    .line 201
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 202
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 208
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 209
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method
