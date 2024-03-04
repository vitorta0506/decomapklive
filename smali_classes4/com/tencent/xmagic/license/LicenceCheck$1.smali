.class Lcom/tencent/xmagic/license/LicenceCheck$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/xmagic/license/HttpFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/license/LicenceCheck;->downloadLicense(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/license/LicenceCheck;

.field final synthetic val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->this$0:Lcom/tencent/xmagic/license/LicenceCheck;

    iput-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessEnd()V
    .locals 2

    const-string v0, "LicenceCheck"

    const-string v1, "downloadLicense, onProcessEnd"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isDownloadStart:Z

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 1

    const-string p1, "LicenceCheck"

    const-string v0, "downloadLicense, onProgressUpdate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "LicenceCheck"

    const-string p2, "downloadLicense, onSaveFailed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveSuccess(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    const-string v0, "LicenceCheck"

    if-nez p1, :cond_0

    const-string p1, "downloadLicense, license not modified"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->this$0:Lcom/tencent/xmagic/license/LicenceCheck;

    iget-object v1, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    invoke-static {p1, v1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->access$000(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)V

    const-string p1, "downloadLicense, onSaveSuccess"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->this$0:Lcom/tencent/xmagic/license/LicenceCheck;

    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    invoke-static {p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->access$100(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "downloadLicense, readDownloadTempLicence is empty!"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isDownloadStart:Z

    return-void

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->this$0:Lcom/tencent/xmagic/license/LicenceCheck;

    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    invoke-static {p2, v0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->access$200(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->this$0:Lcom/tencent/xmagic/license/LicenceCheck;

    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$1;->val$signCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    invoke-static {p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->access$300(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V

    :cond_2
    return-void
.end method
