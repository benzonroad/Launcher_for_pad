.class Lcom/android/launcher2/RocketLauncher$Board$2;
.super Ljava/lang/Object;
.source "RocketLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/RocketLauncher$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/RocketLauncher$Board;


# direct methods
.method constructor <init>(Lcom/android/launcher2/RocketLauncher$Board;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/launcher2/RocketLauncher$Board$2;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher2/RocketLauncher$Board$2;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/RocketLauncher$Board;->mManeuveringThrusters:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/RocketLauncher$Board;->access$002(Lcom/android/launcher2/RocketLauncher$Board;Z)Z

    .line 370
    return-void
.end method
