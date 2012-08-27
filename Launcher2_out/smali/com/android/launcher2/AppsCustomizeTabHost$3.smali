.class Lcom/android/launcher2/AppsCustomizeTabHost$3;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

.field final synthetic val$duration:I

.field final synthetic val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    iput p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$duration:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 274
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v8

    if-gtz v8, :cond_1

    .line 276
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    .line 349
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 283
    .local v6, visiblePageRange:[I
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getVisiblePages([I)V

    .line 284
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 286
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    goto :goto_0

    .line 289
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v7, visiblePages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    aget v2, v6, v8

    .local v2, i:I
    :goto_1
    const/4 v8, 0x1

    aget v8, v6, v8

    if-gt v2, v8, :cond_3

    .line 291
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollX()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 302
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-ltz v2, :cond_6

    .line 303
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 304
    .local v1, child:Landroid/view/View;
    instance-of v8, v1, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v8, :cond_5

    move-object v8, v1

    .line 305
    check-cast v8, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->resetChildrenOnKeyListeners()V

    .line 309
    :cond_4
    :goto_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/launcher2/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 310
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeView(Landroid/view/View;)V

    .line 311
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/launcher2/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 312
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 313
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v5, p:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 306
    .end local v5           #p:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    instance-of v8, v1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v8, :cond_4

    move-object v8, v1

    .line 307
    check-cast v8, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewGridLayout;->resetChildrenOnKeyListeners()V

    goto :goto_3

    .line 321
    .end local v1           #child:Landroid/view/View;
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$500(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    .line 322
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    #calls: Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    invoke-static {v8, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$600(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 325
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 326
    .local v4, outAnim:Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher2/AppsCustomizeTabHost;

    #getter for: Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    invoke-static {v8}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v8

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 339
    .local v3, inAnim:Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 346
    .local v0, animSet:Landroid/animation/AnimatorSet;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 347
    iget v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3;->val$duration:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 348
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
