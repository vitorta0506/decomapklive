.class final Lorg/light/UEUtil$4;
.super Lcom/tencent/zplan/IOnRemoteLuaEvent$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/UEUtil;->registerLuaEvent(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeFunc:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lorg/light/UEUtil$4;->val$nativeFunc:J

    invoke-direct {p0}, Lcom/tencent/zplan/IOnRemoteLuaEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLuaEvent(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/light/UEUtil$4;->val$nativeFunc:J

    invoke-static {v0, v1, p2}, Lorg/light/UEUtil;->access$200(JLjava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method
