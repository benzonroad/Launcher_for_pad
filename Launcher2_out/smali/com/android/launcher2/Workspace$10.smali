.class Lcom/android/launcher2/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
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
    .line 2638
    iput-object p1, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2642
    iget-object v0, p0, Lcom/android/launcher2/Workspace$10;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled()V
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)V

    .line 2643
    return-void
.end method
