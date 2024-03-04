.class final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->buildSendUsers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
        "it",
        "",
        "invoke",
        "(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;)Ljava/lang/Boolean;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->a:Ljava/lang/String;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$buildSendUsers$4;->invoke(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
