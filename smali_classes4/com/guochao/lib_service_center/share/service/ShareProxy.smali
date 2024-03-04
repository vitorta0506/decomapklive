.class public interface abstract Lcom/guochao/lib_service_center/share/service/ShareProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u000eJ:\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/lib_service_center/share/service/ShareProxy;",
        "Lcom/alibaba/android/arouter/facade/template/IProvider;",
        "start",
        "",
        "context",
        "Landroidx/fragment/app/FragmentActivity;",
        "roomId",
        "",
        "coverImg",
        "shareUrl",
        "isOwner",
        "",
        "actionFinish",
        "Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;",
        "ActionFinish",
        "lib_service_center_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V
    .param p1    # Landroidx/fragment/app/FragmentActivity;
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
    .param p6    # Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
