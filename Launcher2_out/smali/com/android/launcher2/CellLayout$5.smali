.class Lcom/android/launcher2/CellLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field final synthetic val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$5;->this$0:Lcom/android/launcher2/CellLayout;

    iput-object p2, p0, Lcom/android/launcher2/CellLayout$5;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$5;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$5;->cancelled:Z

    .line 1025
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$5;->cancelled:Z

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$5;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$5;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$5;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$5;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$5;->val$lp:Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_1
    return-void
.end method
