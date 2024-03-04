.class public interface abstract Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchedUserInfoDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchedUserInfoDisplayer;",
        "Lcom/alibaba/android/arouter/facade/template/IProvider;",
        "displayUserInfo",
        "",
        "userInfo",
        "Lcom/guochao/faceshow/aaspring/base/model/GCUser;",
        "container",
        "Landroid/view/ViewGroup;",
        "component_f2f_match_release"
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
.method public abstract displayUserInfo(Lcom/guochao/faceshow/aaspring/base/model/GCUser;Landroid/view/ViewGroup;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
