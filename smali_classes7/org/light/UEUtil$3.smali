.class final Lorg/light/UEUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/zplan/luabridge/ILuaCaller$IOnLuaResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/UEUtil;->callLua(Ljava/lang/String;Ljava/lang/String;JZ)V
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

    iput-wide p1, p0, Lorg/light/UEUtil$3;->val$nativeFunc:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecuteLua()V
    .locals 0

    return-void
.end method

.method public onLuaResult(ZLjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lorg/light/UEUtil$3;->val$nativeFunc:J

    invoke-static {v0, v1, p1, p2}, Lorg/light/UEUtil;->access$100(JZLjava/lang/String;)V

    return-void
.end method
