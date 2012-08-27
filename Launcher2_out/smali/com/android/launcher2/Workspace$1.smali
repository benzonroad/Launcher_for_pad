.class Lcom/android/launcher2/Workspace$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->initWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    #setter for: Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    .line 452
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 454
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)V

    .line 455
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    .line 447
    return-void
.end method
