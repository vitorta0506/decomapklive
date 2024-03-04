.class public abstract Lcom/huawei/hms/common/internal/TaskApiCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ClientT::",
        "Lcom/huawei/hms/common/internal/AnyClient;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskApiCall"


# instance fields
.field private apiLevel:I

.field private final mRequestJson:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private parcelable:Landroid/os/Parcelable;

.field private token:Lwb/a;

.field private transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    .line 6
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    .line 9
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    .line 12
    iput-object p3, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    .line 17
    iput-object p3, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    return-void
.end method


# virtual methods
.method protected abstract doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lwb/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientT;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lwb/g<",
            "TResultT;>;)V"
        }
    .end annotation
.end method

.method public getApiLevel()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    return v0
.end method

.method public getMinApkVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1c9c380

    return v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRequestJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mRequestJson:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lwb/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public final onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lwb/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientT;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lwb/g<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doExecute, uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskApiCall"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/internal/TaskApiCall;->doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lwb/g;)V

    return-void
.end method

.method public setApiLevel(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->apiLevel:I

    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->parcelable:Landroid/os/Parcelable;

    return-void
.end method

.method public setToken(Lwb/a;)V
    .locals 0

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->transactionId:Ljava/lang/String;

    return-void
.end method
