.class Lcom/android/launcher2/Workspace$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$oldStateIsSmall:Z

.field final synthetic val$stateIsNormal:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher2/Workspace$5;->val$stateIsNormal:Z

    iput-boolean p3, p0, Lcom/android/launcher2/Workspace$5;->val$oldStateIsSmall:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2040
    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    iget-boolean v2, v2, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace$5;->val$stateIsNormal:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace$5;->val$oldStateIsSmall:Z

    if-eqz v2, :cond_0

    .line 2041
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2042
    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2043
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 2041
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2046
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #i:I
    :cond_0
    return-void
.end method
