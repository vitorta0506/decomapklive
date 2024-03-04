.class Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/license/LicenceCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TXSignContext"
.end annotation


# instance fields
.field decodedLicenseInfo:Ljava/lang/String;

.field folder:Ljava/lang/String;

.field isCheckSuccess:Z

.field isDownloadStart:Z

.field key:Ljava/lang/String;

.field licenceVersionType:I

.field localName:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/xmagic/license/LicenceCheck;

.field tmpName:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/xmagic/license/LicenceCheck;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->this$0:Lcom/tencent/xmagic/license/LicenceCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->tmpName:Ljava/lang/String;

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->key:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->url:Ljava/lang/String;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isDownloadStart:Z

    .line 8
    iput-boolean p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isCheckSuccess:Z

    const/16 p2, -0x63

    .line 9
    iput p2, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->licenceVersionType:I

    .line 10
    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->decodedLicenseInfo:Ljava/lang/String;

    return-void
.end method
