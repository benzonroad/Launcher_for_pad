.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .local v0, count:I
    add-int v1, p1, p2

    .line 599
    .local v1, newI:I
    :goto_0
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 600
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 601
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 606
    .end local v2           #newV:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 604
    .restart local v2       #newV:Landroid/view/View;
    :cond_1
    add-int/2addr v1, p2

    .line 605
    goto :goto_0

    .line 606
    .end local v2           #newV:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 78
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .parameter "container"
    .parameter "index"

    .prologue
    .line 123
    check-cast p0, Lcom/android/launcher2/PagedView;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2
    .parameter "container"
    .parameter "i"

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 561
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 572
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 573
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 575
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 587
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 22
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 626
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v15

    .line 627
    .local v15, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 628
    .local v8, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    .line 629
    .local v2, cellCountX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    .line 630
    .local v3, cellCountY:I
    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 631
    .local v11, row:I
    add-int v9, v11, p3

    .line 632
    .local v9, newRow:I
    if-ltz v9, :cond_8

    if-ge v9, v3, :cond_8

    .line 633
    const v4, 0x7f7fffff

    .line 634
    .local v4, closestDistance:F
    const/4 v5, -0x1

    .line 635
    .local v5, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 636
    .local v7, index:I
    if-gez p3, :cond_2

    const/4 v6, -0x1

    .line 637
    .local v6, endIndex:I
    :goto_0
    if-eq v7, v6, :cond_7

    .line 638
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 639
    .local v10, newV:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 640
    .local v14, tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_4

    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v11, :cond_3

    const/4 v12, 0x1

    .line 641
    .local v12, satisfiesRow:Z
    :goto_1
    if-eqz v12, :cond_1

    instance-of v0, v10, Lcom/android/launcher2/BubbleTextView;

    move/from16 v16, v0

    if-nez v16, :cond_0

    instance-of v0, v10, Lcom/android/launcher2/FolderIcon;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 643
    :cond_0
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    iget v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    iget v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 645
    .local v13, tmpDistance:F
    cmpg-float v16, v13, v4

    if-gez v16, :cond_1

    .line 646
    move v5, v7

    .line 647
    move v4, v13

    .line 650
    .end local v13           #tmpDistance:F
    :cond_1
    if-gt v7, v6, :cond_6

    .line 651
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 636
    .end local v6           #endIndex:I
    .end local v10           #newV:Landroid/view/View;
    .end local v12           #satisfiesRow:Z
    .end local v14           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_0

    .line 640
    .restart local v6       #endIndex:I
    .restart local v10       #newV:Landroid/view/View;
    .restart local v14       #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v11, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 653
    .restart local v12       #satisfiesRow:Z
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 656
    .end local v10           #newV:Landroid/view/View;
    .end local v12           #satisfiesRow:Z
    .end local v14           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_7
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v5, v0, :cond_8

    .line 657
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 660
    .end local v4           #closestDistance:F
    .end local v5           #closestIndex:I
    .end local v6           #endIndex:I
    .end local v7           #index:I
    :goto_2
    return-object v16

    :cond_8
    const/16 v16, 0x0

    goto :goto_2
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 610
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 611
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 615
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 287
    .local v10, itemContainer:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 288
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    .local v6, countX:I
    move-object/from16 v22, v16

    .line 289
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v7

    .line 298
    .local v7, countY:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    .line 299
    .local v5, container:Lcom/android/launcher2/PagedView;
    invoke-static {v5}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 300
    .local v17, tabHost:Landroid/widget/TabHost;
    const v22, 0x1020013

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TabWidget;

    .line 301
    .local v18, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 302
    .local v9, iconIndex:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 303
    .local v11, itemCount:I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v15

    .line 304
    .local v15, pageIndex:I
    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    .line 306
    .local v14, pageCount:I
    rem-int v20, v9, v6

    .line 307
    .local v20, x:I
    div-int v21, v9, v6

    .line 309
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 310
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    .line 311
    .local v8, handleKeyEvent:Z
    :goto_1
    const/4 v12, 0x0

    .line 314
    .local v12, newParent:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 315
    .local v3, child:Landroid/view/View;
    const/16 v19, 0x0

    .line 316
    .local v19, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 434
    :goto_2
    return v19

    .line 291
    .end local v2           #action:I
    .end local v3           #child:Landroid/view/View;
    .end local v5           #container:Lcom/android/launcher2/PagedView;
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v8           #handleKeyEvent:Z
    .end local v9           #iconIndex:I
    .end local v10           #itemContainer:Landroid/view/ViewGroup;
    .end local v11           #itemCount:I
    .end local v12           #newParent:Landroid/view/ViewGroup;
    .end local v14           #pageCount:I
    .end local v15           #pageIndex:I
    .end local v16           #parentLayout:Landroid/view/ViewGroup;
    .end local v17           #tabHost:Landroid/widget/TabHost;
    .end local v18           #tabs:Landroid/widget/TabWidget;
    .end local v19           #wasHandled:Z
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16       #parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10       #itemContainer:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 292
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6       #countX:I
    move-object/from16 v22, v16

    .line 293
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7       #countY:I
    goto :goto_0

    .line 310
    .restart local v2       #action:I
    .restart local v5       #container:Lcom/android/launcher2/PagedView;
    .restart local v9       #iconIndex:I
    .restart local v11       #itemCount:I
    .restart local v14       #pageCount:I
    .restart local v15       #pageIndex:I
    .restart local v17       #tabHost:Landroid/widget/TabHost;
    .restart local v18       #tabs:Landroid/widget/TabWidget;
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 318
    .restart local v3       #child:Landroid/view/View;
    .restart local v8       #handleKeyEvent:Z
    .restart local v12       #newParent:Landroid/view/ViewGroup;
    .restart local v19       #wasHandled:Z
    :sswitch_0
    if-eqz v8, :cond_2

    .line 320
    if-lez v9, :cond_3

    .line 321
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 333
    :cond_2
    :goto_3
    const/16 v19, 0x1

    .line 334
    goto :goto_2

    .line 323
    :cond_3
    if-lez v15, :cond_2

    .line 324
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 325
    if-eqz v12, :cond_2

    .line 326
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 327
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 336
    :sswitch_1
    if-eqz v8, :cond_4

    .line 338
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 339
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 351
    :cond_4
    :goto_4
    const/16 v19, 0x1

    .line 352
    goto :goto_2

    .line 341
    :cond_5
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 342
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 343
    if-eqz v12, :cond_4

    .line 344
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 345
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 346
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 354
    :sswitch_2
    if-eqz v8, :cond_6

    .line 356
    if-lez v21, :cond_7

    .line 357
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 358
    .local v13, newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 363
    .end local v13           #newiconIndex:I
    :cond_6
    :goto_5
    const/16 v19, 0x1

    .line 364
    goto/16 :goto_2

    .line 360
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_5

    .line 366
    :sswitch_3
    if-eqz v8, :cond_8

    .line 368
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 369
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 370
    .restart local v13       #newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 373
    .end local v13           #newiconIndex:I
    :cond_8
    const/16 v19, 0x1

    .line 374
    goto/16 :goto_2

    .line 377
    :sswitch_4
    if-eqz v8, :cond_9

    move-object v4, v5

    .line 379
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 380
    .local v4, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 382
    .end local v4           #clickListener:Landroid/view/View$OnClickListener;
    :cond_9
    const/16 v19, 0x1

    .line 383
    goto/16 :goto_2

    .line 385
    :sswitch_5
    if-eqz v8, :cond_a

    .line 388
    if-lez v15, :cond_b

    .line 389
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 390
    if-eqz v12, :cond_a

    .line 391
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 392
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 399
    :cond_a
    :goto_6
    const/16 v19, 0x1

    .line 400
    goto/16 :goto_2

    .line 396
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 402
    :sswitch_6
    if-eqz v8, :cond_c

    .line 405
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 406
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 407
    if-eqz v12, :cond_c

    .line 408
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 409
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 410
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 416
    :cond_c
    :goto_7
    const/16 v19, 0x1

    .line 417
    goto/16 :goto_2

    .line 413
    :cond_d
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 419
    :sswitch_7
    if-eqz v8, :cond_e

    .line 421
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 423
    :cond_e
    const/16 v19, 0x1

    .line 424
    goto/16 :goto_2

    .line 426
    :sswitch_8
    if-eqz v8, :cond_f

    .line 428
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 430
    :cond_f
    const/16 v19, 0x1

    .line 431
    goto/16 :goto_2

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    .line 88
    .local v4, tabHost:Landroid/widget/TabHost;
    const v6, 0x1020011

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 90
    .local v1, contents:Landroid/view/ViewGroup;
    const v6, 0x7f060008

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    .local v3, shop:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 93
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 94
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v5, 0x0

    .line 95
    .local v5, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 116
    :cond_0
    :goto_1
    :pswitch_0
    return v5

    .line 93
    .end local v2           #handleKeyEvent:Z
    .end local v5           #wasHandled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    .restart local v2       #handleKeyEvent:Z
    .restart local v5       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 99
    if-eq p0, v3, :cond_2

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 103
    :cond_2
    const/4 v5, 0x1

    .line 104
    goto :goto_1

    .line 106
    :pswitch_2
    if-eqz v2, :cond_0

    .line 108
    if-ne p0, v3, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 110
    const/4 v5, 0x1

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 822
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutChildren;

    .line 823
    .local v5, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 824
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 825
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v6, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 827
    .local v6, title:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 828
    .local v0, action:I
    if-eq v0, v8, :cond_0

    move v2, v8

    .line 829
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 830
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 898
    :goto_1
    return v7

    .line 828
    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 832
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_0
    if-eqz v2, :cond_1

    .line 834
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 835
    .local v4, newIcon:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 836
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 839
    .end local v4           #newIcon:Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    .line 840
    goto :goto_1

    .line 842
    :sswitch_1
    if-eqz v2, :cond_2

    .line 844
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 845
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 846
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 851
    .end local v4           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 852
    goto :goto_1

    .line 848
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 854
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_4

    .line 856
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 857
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 858
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 861
    .end local v4           #newIcon:Landroid/view/View;
    :cond_4
    const/4 v7, 0x1

    .line 862
    goto :goto_1

    .line 864
    :sswitch_3
    if-eqz v2, :cond_5

    .line 866
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 867
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_6

    .line 868
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 873
    .end local v4           #newIcon:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 874
    goto :goto_1

    .line 870
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 876
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_7

    .line 878
    invoke-static {v3, v5, v9, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 879
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 880
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 883
    .end local v4           #newIcon:Landroid/view/View;
    :cond_7
    const/4 v7, 0x1

    .line 884
    goto :goto_1

    .line 886
    :sswitch_5
    if-eqz v2, :cond_8

    .line 888
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    invoke-static {v3, v5, v8, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 890
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_8

    .line 891
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 894
    .end local v4           #newIcon:Landroid/view/View;
    :cond_8
    const/4 v7, 0x1

    .line 895
    goto :goto_1

    .line 830
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 14
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 497
    .local v9, parent:Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 498
    .local v5, launcher:Landroid/view/ViewGroup;
    const v12, 0x7f06001b

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 499
    .local v11, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 500
    .local v2, buttonIndex:I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 501
    .local v1, buttonCount:I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 507
    .local v8, pageIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 508
    .local v0, action:I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v4, 0x1

    .line 509
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 510
    .local v10, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 553
    :goto_1
    return v10

    .line 508
    .end local v4           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 512
    .restart local v4       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :pswitch_0
    if-eqz v4, :cond_1

    .line 514
    if-lez v2, :cond_2

    .line 515
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 520
    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 521
    goto :goto_1

    .line 517
    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 523
    :pswitch_1
    if-eqz v4, :cond_3

    .line 525
    add-int/lit8 v12, v1, -0x1

    if-ge v2, v12, :cond_4

    .line 526
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 531
    :cond_3
    :goto_3
    const/4 v10, 0x1

    .line 532
    goto :goto_1

    .line 528
    :cond_4
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 534
    :pswitch_2
    if-eqz v4, :cond_5

    .line 536
    invoke-virtual {v11, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 537
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 538
    .local v3, children:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v3, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 539
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 540
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 545
    .end local v3           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 546
    goto :goto_1

    .line 542
    .restart local v3       #children:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_4

    .line 549
    .end local v3           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :pswitch_3
    const/4 v10, 0x1

    .line 550
    goto :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutChildren;

    .line 668
    .local v8, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 669
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 670
    .local v11, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 671
    .local v3, launcher:Landroid/view/ViewGroup;
    const v12, 0x7f060024

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 672
    .local v9, tabs:Landroid/view/ViewGroup;
    const v12, 0x7f060023

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 673
    .local v2, hotseat:Landroid/view/ViewGroup;
    invoke-virtual {v11, v4}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 674
    .local v7, pageIndex:I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 676
    .local v6, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 677
    .local v0, action:I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_1

    const/4 v1, 0x1

    .line 678
    .local v1, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 679
    .local v10, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 815
    :cond_0
    :goto_1
    return v10

    .line 677
    .end local v1           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 681
    .restart local v1       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 683
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 684
    .local v5, newIcon:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 685
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 700
    .end local v5           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v10, 0x1

    .line 701
    goto :goto_1

    .line 687
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_3
    if-lez v7, :cond_2

    .line 688
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 689
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 691
    if-eqz v5, :cond_4

    .line 692
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 695
    :cond_4
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 703
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_1
    if-eqz v1, :cond_5

    .line 705
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 706
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_6

    .line 707
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 721
    .end local v5           #newIcon:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 722
    goto :goto_1

    .line 709
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_6
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_5

    .line 710
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 711
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 712
    if-eqz v5, :cond_7

    .line 713
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 716
    :cond_7
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 724
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v1, :cond_0

    .line 726
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 727
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_8

    .line 728
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 729
    const/4 v10, 0x1

    goto :goto_1

    .line 731
    :cond_8
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 736
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_3
    if-eqz v1, :cond_0

    .line 738
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 739
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 740
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 741
    const/4 v10, 0x1

    goto :goto_1

    .line 742
    :cond_9
    if-eqz v2, :cond_0

    .line 743
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_1

    .line 748
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v1, :cond_a

    .line 751
    if-lez v7, :cond_c

    .line 752
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 753
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 754
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_b

    .line 755
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 767
    .end local v5           #newIcon:Landroid/view/View;
    :cond_a
    :goto_4
    const/4 v10, 0x1

    .line 768
    goto/16 :goto_1

    .line 758
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_b
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 761
    .end local v5           #newIcon:Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 762
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_a

    .line 763
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 770
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_5
    if-eqz v1, :cond_d

    .line 773
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_f

    .line 774
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 775
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 776
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_e

    .line 777
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 790
    .end local v5           #newIcon:Landroid/view/View;
    :cond_d
    :goto_5
    const/4 v10, 0x1

    .line 791
    goto/16 :goto_1

    .line 780
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_e
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_5

    .line 783
    .end local v5           #newIcon:Landroid/view/View;
    :cond_f
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 785
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_d

    .line 786
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 793
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_6
    if-eqz v1, :cond_10

    .line 795
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 796
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_10

    .line 797
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 800
    .end local v5           #newIcon:Landroid/view/View;
    :cond_10
    const/4 v10, 0x1

    .line 801
    goto/16 :goto_1

    .line 803
    :sswitch_7
    if-eqz v1, :cond_11

    .line 805
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 807
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_11

    .line 808
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 811
    .end local v5           #newIcon:Landroid/view/View;
    :cond_11
    const/4 v10, 0x1

    .line 812
    goto/16 :goto_1

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 441
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 489
    :goto_0
    return v7

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 444
    .local v3, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 445
    .local v5, tabHost:Landroid/widget/TabHost;
    const v8, 0x1020011

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 447
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 448
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 450
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 451
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 452
    .local v2, handleKeyEvent:Z
    :goto_1
    const/4 v7, 0x0

    .line 453
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    const/4 v7, 0x1

    .line 479
    goto :goto_0

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v7

    .line 451
    goto :goto_1

    .line 455
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 457
    if-lez v6, :cond_2

    .line 458
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 461
    :cond_2
    const/4 v7, 0x1

    .line 462
    goto :goto_0

    .line 464
    :pswitch_2
    if-eqz v2, :cond_3

    .line 466
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 467
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 474
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 475
    goto :goto_0

    .line 469
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 481
    :pswitch_3
    if-eqz v2, :cond_5

    .line 483
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 485
    :cond_5
    const/4 v7, 0x1

    .line 486
    goto :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
