.class Lcom/android/launcher2/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field dropPos:[I

.field id:J

.field isGesture:Z

.field itemType:I

.field mColor:I

.field screen:I

.field spanX:I

.field spanY:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/ItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 52
    iput-wide v2, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 57
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 62
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 67
    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 72
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 95
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 96
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 97
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 98
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 99
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 100
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 101
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 102
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 103
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 131
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 134
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 135
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 139
    :goto_0
    return-object v3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-static {p1}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 146
    .local v0, data:[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 148
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 111
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    if-nez v0, :cond_0

    .line 113
    const-string v0, "container"

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v0, "screen"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/ItemInfo;->isGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 123
    const-string v0, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v0, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    return-void
.end method
