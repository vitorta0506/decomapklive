.class Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/telicense/TELicenseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TXSignContext"
.end annotation


# instance fields
.field folder:Ljava/lang/String;

.field key:Ljava/lang/String;

.field localName:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

.field tmpName:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->localName:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->tmpName:Ljava/lang/String;

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->folder:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->key:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;-><init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;)V

    return-void
.end method
