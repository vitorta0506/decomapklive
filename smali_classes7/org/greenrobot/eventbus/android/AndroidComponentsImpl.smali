.class public Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
.super Lorg/greenrobot/eventbus/android/AndroidComponents;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/greenrobot/eventbus/android/AndroidLogger;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/android/AndroidLogger;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/greenrobot/eventbus/android/DefaultAndroidMainThreadSupport;

    invoke-direct {v1}, Lorg/greenrobot/eventbus/android/DefaultAndroidMainThreadSupport;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/greenrobot/eventbus/android/AndroidComponents;-><init>(Lorg/greenrobot/eventbus/Logger;Lorg/greenrobot/eventbus/MainThreadSupport;)V

    return-void
.end method
