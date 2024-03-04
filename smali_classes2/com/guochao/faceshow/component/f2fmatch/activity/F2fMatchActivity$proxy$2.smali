.class final Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;

    invoke-direct {v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;->INSTANCE:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/f2f_proxy"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$proxy$2;->invoke()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;

    move-result-object v0

    return-object v0
.end method
