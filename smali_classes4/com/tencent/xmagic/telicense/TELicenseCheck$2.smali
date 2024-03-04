.class Lcom/tencent/xmagic/telicense/TELicenseCheck$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/xmagic/telicense/TEHttpFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/telicense/TELicenseCheck;->downloadLicense(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

.field final synthetic val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

.field final synthetic val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iput-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    iput-object p3, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readDownloadedLicenseAndNotify(Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1200(Lcom/tencent/xmagic/telicense/TELicenseCheck;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$800(Lcom/tencent/xmagic/telicense/TELicenseCheck;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    iget-object v1, v1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/xmagic/telicense/AssetLicenseUtil;->parseAssetLicense(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {v1, v0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1000(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    const/4 v1, -0x4

    invoke-static {v0, v1, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$900(Lcom/tencent/xmagic/telicense/TELicenseCheck;ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFailed: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\uff0c\u51c6\u5907\u8bfb\u53d6\u672c\u5730asset"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TELicenseCheck"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$800(Lcom/tencent/xmagic/telicense/TELicenseCheck;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    iget-object v0, v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->key:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/xmagic/telicense/AssetLicenseUtil;->parseAssetLicense(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    const/16 v0, -0xc

    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-static {p1, v0, v1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$900(Lcom/tencent/xmagic/telicense/TELicenseCheck;ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-static {v0, p1, v1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1000(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1100(Lcom/tencent/xmagic/telicense/TELicenseCheck;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadLicense, onDownloadSuccess,lastModified="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TELicenseCheck"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    const-string/jumbo v0, "vcube.license"

    invoke-static {p1, v0, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$400(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iget-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    iget-object v0, p2, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$500(Lcom/tencent/xmagic/telicense/TELicenseCheck;Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$600(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iget-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    invoke-static {p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$700(Lcom/tencent/xmagic/telicense/TELicenseCheck;Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-direct {p0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->readDownloadedLicenseAndNotify(Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$800(Lcom/tencent/xmagic/telicense/TELicenseCheck;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$signCtx:Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    iget-object p2, p2, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/xmagic/telicense/AssetLicenseUtil;->parseAssetLicense(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    const/16 p2, -0xc

    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-static {p1, p2, v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$900(Lcom/tencent/xmagic/telicense/TELicenseCheck;ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-static {p2, p1, v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1000(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1100(Lcom/tencent/xmagic/telicense/TELicenseCheck;)V

    return-void
.end method

.method public onNotModified()V
    .locals 2

    const-string v0, "TELicenseCheck"

    const-string v1, "onNotModified\uff0cread local cache"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->val$listener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-direct {p0, v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->readDownloadedLicenseAndNotify(Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-static {v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$1100(Lcom/tencent/xmagic/telicense/TELicenseCheck;)V

    return-void
.end method
