.class Lcom/android/launcher2/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFirstTime:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$workspace:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;Landroid/view/ViewTreeObserver;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$4;->val$workspace:Lcom/android/launcher2/Workspace;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$4;->mFirstTime:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$4;->mFirstTime:Z

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$4;->mFirstTime:Z

    .line 668
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$4;->val$workspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$4;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$800(Lcom/android/launcher2/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 666
    iget-object v0, p0, Lcom/android/launcher2/Launcher$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
