.class public interface abstract Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/IProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;",
        "Lcom/alibaba/android/arouter/facade/template/IProvider;",
        "track",
        "",
        "event",
        "",
        "Companion",
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


# static fields
.field public static final CLICK_MVP:Ljava/lang/String; = "CLICK_MVP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker$Companion;->$$INSTANCE:Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker$Companion;

    sput-object v0, Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;->Companion:Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker$Companion;

    return-void
.end method


# virtual methods
.method public abstract track(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
