.class public Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FetchLicenseResult"
.end annotation


# instance fields
.field public auth_type:Ljava/lang/String;

.field public bind_type:Ljava/lang/String;

.field public error_code:I

.field public error_msg:Ljava/lang/String;

.field public http_status:I

.field public license:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;


# direct methods
.method public constructor <init>(Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->this$0:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3ea

    .line 2
    iput p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_code:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->http_status:I

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_msg:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->license:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->bind_type:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->auth_type:Ljava/lang/String;

    return-void
.end method
