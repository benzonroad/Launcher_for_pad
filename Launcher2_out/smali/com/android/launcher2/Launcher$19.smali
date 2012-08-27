.class Lcom/android/launcher2/Launcher$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$alphaAnim:Landroid/animation/ValueAnimator;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$instance:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/Launcher;Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2827
    iput-object p1, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$19;->val$instance:Lcom/android/launcher2/Launcher;

    iput-object p4, p0, Lcom/android/launcher2/Launcher$19;->val$alphaAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 2830
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2831
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2832
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$19;->val$instance:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$19;->val$alphaAnim:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V

    .line 2836
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 2837
    return-void
.end method
