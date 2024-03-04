.class Lcom/tencent/xmagic/telicense/TELicenseCheck$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/telicense/TELicenseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/tencent/xmagic/telicense/TELicenseCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/xmagic/telicense/TELicenseCheck;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;-><init>(Lcom/tencent/xmagic/telicense/TELicenseCheck$1;)V

    sput-object v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$Holder;->instance:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/xmagic/telicense/TELicenseCheck;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$Holder;->instance:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    return-object v0
.end method
