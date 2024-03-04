.class public final Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;",
        "",
        "()V",
        "Companion",
        "IAnimListenerImp",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;->Companion:Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;)V
    .locals 1
    .param p0    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;->Companion:Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;)V

    return-void
.end method

.method public static final startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .locals 1
    .param p0    # Lcom/tencent/qgame/animplayer/AnimView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/qgame/animplayer/inter/IAnimListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;->Companion:Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;->startPlay(Lcom/tencent/qgame/animplayer/AnimView;Ljava/io/File;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    return-void
.end method
