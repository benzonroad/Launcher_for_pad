.class Lcom/android/launcher2/AppsCustomizePagedView$5;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 2
    .parameter "task"
    .parameter "data"

    .prologue
    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 891
    :goto_0
    return-void

    .line 887
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$5;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    #calls: Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    throw v0
.end method
