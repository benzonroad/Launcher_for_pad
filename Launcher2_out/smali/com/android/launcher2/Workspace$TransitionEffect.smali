.class public final enum Lcom/android/launcher2/Workspace$TransitionEffect;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/Workspace$TransitionEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum CubeIn:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum CubeOut:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum RotateDown:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum RotateUp:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum Standard:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum Tablet:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum ZoomIn:Lcom/android/launcher2/Workspace$TransitionEffect;

.field public static final enum ZoomOut:Lcom/android/launcher2/Workspace$TransitionEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->Standard:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 250
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "Tablet"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->Tablet:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 251
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "ZoomIn"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->ZoomIn:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 252
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "ZoomOut"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->ZoomOut:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 253
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "RotateUp"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateUp:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 254
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "RotateDown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateDown:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 255
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "CubeIn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->CubeIn:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 256
    new-instance v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    const-string v1, "CubeOut"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->CubeOut:Lcom/android/launcher2/Workspace$TransitionEffect;

    .line 248
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/launcher2/Workspace$TransitionEffect;

    sget-object v1, Lcom/android/launcher2/Workspace$TransitionEffect;->Standard:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/Workspace$TransitionEffect;->Tablet:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/Workspace$TransitionEffect;->ZoomIn:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/Workspace$TransitionEffect;->ZoomOut:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateUp:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher2/Workspace$TransitionEffect;->RotateDown:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher2/Workspace$TransitionEffect;->CubeIn:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher2/Workspace$TransitionEffect;->CubeOut:Lcom/android/launcher2/Workspace$TransitionEffect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->$VALUES:[Lcom/android/launcher2/Workspace$TransitionEffect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$TransitionEffect;
    .locals 1
    .parameter

    .prologue
    .line 248
    const-class v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Workspace$TransitionEffect;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/Workspace$TransitionEffect;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/launcher2/Workspace$TransitionEffect;->$VALUES:[Lcom/android/launcher2/Workspace$TransitionEffect;

    invoke-virtual {v0}, [Lcom/android/launcher2/Workspace$TransitionEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Workspace$TransitionEffect;

    return-object v0
.end method
