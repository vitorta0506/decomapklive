.class Lcom/tencent/xmagic/telicense/TELicenseCheck$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/telicense/TELicenseCheck;->setTELicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$licenseCheckListener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iput-object p2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->val$licenseCheckListener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->this$0:Lcom/tencent/xmagic/telicense/TELicenseCheck;

    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;->val$licenseCheckListener:Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->access$200(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    return-void
.end method
