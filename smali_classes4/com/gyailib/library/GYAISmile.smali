.class public Lcom/gyailib/library/GYAISmile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native deinit()I
.end method

.method public native detect(Landroid/graphics/Bitmap;IIII)I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAISmile;->nativePtr:J

    return-wide v0
.end method

.method public native init(Lcom/gyailib/library/SDKModelConfig;)I
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAISmile;->nativePtr:J

    return-void
.end method
