.class public abstract Landroidx/core/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# direct methods
.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .line 188
    if-eqz p0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 195
    :cond_0
    :goto_0
    return-void
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 176
    invoke-static {p0, v0}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 176
    return v1

    .line 178
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "os":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 152
    .local v1, "old":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v0, v3

    .line 153
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 155
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "readLen":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 156
    invoke-virtual {v0, v3, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v3    # "buffer":[B
    .end local v5    # "readLen":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 159
    :catch_0
    move-exception v3

    goto :goto_1

    .line 158
    .restart local v3    # "buffer":[B
    .restart local v5    # "readLen":I
    :cond_0
    nop

    .line 163
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 158
    const/4 v2, 0x1

    return v2

    .line 159
    .end local v3    # "buffer":[B
    .end local v5    # "readLen":I
    :goto_1
    nop

    .line 160
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "TypefaceCompatUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error copying resource contents to temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    nop

    .line 163
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 161
    return v2

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 165
    throw v2
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return-object v1

    .line 72
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".font"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    .line 74
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 77
    return-object v4

    .line 81
    :cond_1
    goto :goto_1

    .line 79
    :catch_0
    move-exception v5

    .line 73
    .end local v4    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 83
    .end local v3    # "i":I
    return-object v1
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 108
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    const-string v0, "r"

    invoke-virtual {v1, p2, v0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v3, v0

    .line 110
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_1

    .line 111
    nop

    .line 118
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 111
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v2

    .line 113
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    .line 114
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v5, v0

    .line 115
    .local v5, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    .line 116
    .local v9, "size":J
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    return-object v0

    .line 108
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    .end local v9    # "size":J
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_2

    .line 113
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_1
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_3
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 119
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_4
    nop

    .line 120
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public static readFontInfoIntoByteBuffer(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 217
    .local v3, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 222
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    goto :goto_1

    .line 226
    :cond_1
    invoke-static {p0, p2, v4}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 227
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v3    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
