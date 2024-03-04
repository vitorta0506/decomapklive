.class public final Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;",
        "",
        "()V",
        "observeFeatures",
        "",
        "fragment",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final observeFeatures(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appoint_square"

    const-string v1, "planet_match"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper$observeFeatures$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper$observeFeatures$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;)V

    invoke-static {p1, v0, v1}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeaturesCombinedOnLifecycle(Landroidx/lifecycle/LifecycleOwner;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
