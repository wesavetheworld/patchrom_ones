.class Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadSafeOutputStream"
.end annotation


# instance fields
.field mClosed:Z

.field mDelegateStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "delegate"

    .prologue
    .line 10086
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 10087
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    .line 10088
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10093
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mClosed:Z

    .line 10094
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10098
    :goto_0
    monitor-exit p0

    return-void

    .line 10095
    :catch_0
    move-exception v0

    .line 10096
    .local v0, ex:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10093
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10102
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10103
    monitor-exit p0

    return-void

    .line 10102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10129
    :goto_0
    monitor-exit p0

    return-void

    .line 10128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10111
    :goto_0
    if-lez p3, :cond_0

    .line 10112
    monitor-enter p0

    .line 10113
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mClosed:Z

    if-eqz v1, :cond_1

    .line 10114
    monitor-exit p0

    .line 10122
    :cond_0
    return-void

    .line 10116
    :cond_1
    const/16 v1, 0x2000

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10117
    .local v0, writeLength:I
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 10118
    add-int/2addr p2, v0

    .line 10119
    sub-int/2addr p3, v0

    .line 10120
    monitor-exit p0

    goto :goto_0

    .end local v0           #writeLength:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method