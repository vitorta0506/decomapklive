.class public final Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u001eJ\u001e\u0010-\u001a\u00020*2\u0016\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001dj\u0008\u0012\u0004\u0012\u00020\u0017`\u001fJ\u000e\u0010/\u001a\u00020*2\u0006\u0010,\u001a\u00020\u001eJ~\u00100\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u0002042\u0006\u00107\u001a\u0002042\u0006\u00108\u001a\u0002042\u0006\u00109\u001a\u0002042\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u0002040;2\u0008\u0010<\u001a\u0004\u0018\u0001042\u0006\u0010=\u001a\u00020\u00052\u0006\u0010>\u001a\u0002042\u0006\u0010?\u001a\u00020\u00052\u0006\u0010@\u001a\u0002042\u0006\u0010A\u001a\u00020BJ \u0010C\u001a\u00020D2\u0006\u0010,\u001a\u00020\u001e2\u0006\u0010E\u001a\u0002042\u0006\u0010F\u001a\u000204H\u0002J\u000e\u0010G\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010H\u001a\u00020\u0012J\u001a\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001dj\n\u0012\u0004\u0012\u00020\u0017\u0018\u0001`\u001fJ\u000e\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020*2\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010M\u001a\u00020*2\u0006\u0010K\u001a\u00020\u0005J!\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010RJ)\u0010S\u001a\u0002042\u0006\u00101\u001a\u0002022\u0006\u0010T\u001a\u0002042\u0006\u0010F\u001a\u000204H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010UR\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR0\u0010\u001c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\u0008\u0012\u0004\u0012\u00020\u001e`\u001f0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0014\"\u0004\u0008!\u0010\"R0\u0010#\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00170\u001dj\u0008\u0012\u0004\u0012\u00020\u0017`\u001f0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0014\"\u0004\u0008%\u0010\"R0\u0010&\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\u0008\u0012\u0004\u0012\u00020\u001e`\u001f0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0014\"\u0004\u0008(\u0010\"\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006V"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "COUNTRY",
        "",
        "getCOUNTRY",
        "()I",
        "LANGUAGE",
        "getLANGUAGE",
        "OTHER_VIDEO",
        "getOTHER_VIDEO",
        "PICTURE",
        "getPICTURE",
        "VIDEO_RECORD_SCREEN",
        "getVIDEO_RECORD_SCREEN",
        "applyResultLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getApplyResultLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "commiting",
        "localImageOrVideoBean",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "getLocalImageOrVideoBean",
        "()Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "setLocalImageOrVideoBean",
        "(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V",
        "otherVideoUrlList",
        "Ljava/util/ArrayList;",
        "Landroid/net/Uri;",
        "Lkotlin/collections/ArrayList;",
        "getOtherVideoUrlList",
        "setOtherVideoUrlList",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "selectPictureList",
        "getSelectPictureList",
        "setSelectPictureList",
        "videoRecordScreenLiveData",
        "getVideoRecordScreenLiveData",
        "setVideoRecordScreenLiveData",
        "addAddPicButton",
        "",
        "addOtherVideo",
        "uri",
        "addPicture",
        "picList",
        "addVideoRecordScreenLive",
        "commit",
        "context",
        "Landroid/content/Context;",
        "email",
        "",
        "country_num",
        "phone",
        "whatsApp",
        "faceBook",
        "instagram",
        "langIdList",
        "",
        "guildId",
        "signType",
        "officeCode",
        "fansNum",
        "outSide",
        "monthFlow",
        "",
        "copyFileOrNot",
        "Ljava/io/File;",
        "path",
        "name",
        "isAddPicButton",
        "isPicListEmpty",
        "removeAddPicButton",
        "removeOtherVideo",
        "index",
        "removePicture",
        "removeVideoRecordScreenLive",
        "uploadVideoOrPicture",
        "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
        "file",
        "flag",
        "(Ljava/io/File;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "videoProcess",
        "filePath",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final COUNTRY:I

.field private final LANGUAGE:I

.field private final OTHER_VIDEO:I

.field private final PICTURE:I

.field private final VIDEO_RECORD_SCREEN:I

.field private final applyResultLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private commiting:Z

.field private localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectPictureList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->VIDEO_RECORD_SCREEN:I

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->OTHER_VIDEO:I

    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->PICTURE:I

    const/4 v1, 0x4

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->LANGUAGE:I

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->COUNTRY:I

    .line 7
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    .line 10
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->applyResultLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    iput-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-void
.end method

.method public static final synthetic access$copyFileOrNot(Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->copyFileOrNot(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCommiting$p(Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->commiting:Z

    return-void
.end method

.method public static final synthetic access$uploadVideoOrPicture(Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;Ljava/io/File;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->uploadVideoOrPicture(Ljava/io/File;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$videoProcess(Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final copyFileOrNot(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 2
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "guild"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/guochao/faceshow/utils/FileUtil;->copyUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    return-object p2

    .line 6
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private final uploadVideoOrPicture(Ljava/io/File;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v3, Lf7/a;->e0:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "isCompress"

    if-ne p2, v2, :cond_0

    const-string/jumbo v2, "videoFile"

    .line 4
    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-virtual {v1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    :cond_0
    const-string v5, "imgFile"

    .line 6
    invoke-virtual {v1, v5, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {v1, v4, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_0
    const-string p1, "isPick"

    .line 8
    invoke-virtual {v1, p1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string p1, "flag"

    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 10
    new-instance p1, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$uploadVideoOrPicture$2$1$1;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$uploadVideoOrPicture$2$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p1
.end method

.method private final videoProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getEditVideoClipDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".mp4"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 5
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/tencent/ugc/TXVideoEditer;

    invoke-direct {v2, p1}, Lcom/tencent/ugc/TXVideoEditer;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, p2}, Lcom/tencent/ugc/TXVideoEditer;->setVideoPath(Ljava/lang/String;)I

    .line 7
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/ugc/TXVideoEditer;

    const/16 p2, 0x4b0

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/TXVideoEditer;->setVideoBitrate(I)V

    .line 8
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/ugc/TXVideoEditer;

    new-instance p2, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;

    invoke-direct {p2, v0, p3, v1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/TXVideoEditer;->setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V

    .line 9
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/ugc/TXVideoEditer;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/ugc/TXVideoEditer;->generateVideo(ILjava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final addAddPicButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final addOtherVideo(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final addPicture(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "picList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->removeAddPicButton()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addAddPicButton()V

    return-void
.end method

.method public final addVideoRecordScreenLive(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;D)V
    .locals 22
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v16, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v15, p9

    move/from16 v8, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-wide/from16 v13, p14

    move-object/from16 v18, v1

    const-string v1, "context"

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "email"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "country_num"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "phone"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "whatsApp"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "faceBook"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "instagram"

    move-object/from16 v2, p7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "langIdList"

    move-object/from16 v2, p8

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "officeCode"

    move-object/from16 v2, p11

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outSide"

    move-object/from16 v2, p13

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;

    const/4 v2, 0x0

    move-object/from16 v20, v3

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->publishingLoadingState(Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->commiting:Z

    .line 3
    new-instance v1, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$commit$1;

    move-object v2, v0

    move-object v0, v1

    const/16 v17, 0x0

    move-object/from16 v21, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v17}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$commit$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchMain(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getApplyResultLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->applyResultLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCOUNTRY()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->COUNTRY:I

    return v0
.end method

.method public final getLANGUAGE()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->LANGUAGE:I

    return v0
.end method

.method public final getLocalImageOrVideoBean()Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-object v0
.end method

.method public final getOTHER_VIDEO()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->OTHER_VIDEO:I

    return v0
.end method

.method public final getOtherVideoUrlList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPICTURE()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->PICTURE:I

    return v0
.end method

.method public final getSelectPictureList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getVIDEO_RECORD_SCREEN()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->VIDEO_RECORD_SCREEN:I

    return v0
.end method

.method public final getVideoRecordScreenLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final isAddPicButton(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "localImageOrVideoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isPicListEmpty()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 4
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public final removeAddPicButton()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final removeOtherVideo(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final removePicture(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->addAddPicButton()V

    return-void
.end method

.method public final removeVideoRecordScreenLive(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setLocalImageOrVideoBean(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->localImageOrVideoBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-void
.end method

.method public final setOtherVideoUrlList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->otherVideoUrlList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setSelectPictureList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->selectPictureList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setVideoRecordScreenLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoRecordScreenLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
