.class public final Lcom/google/android/play/core/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/google/android/play/core/internal/y;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/internal/q0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/q0;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/play/core/internal/p0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/p0;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/play/core/internal/m0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/m0;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/play/core/internal/l0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/l0;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/google/android/play/core/internal/k0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/k0;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/android/play/core/internal/g0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/g0;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/android/play/core/internal/f0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/f0;-><init>()V

    return-object v0

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/play/core/internal/s0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/s0;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
