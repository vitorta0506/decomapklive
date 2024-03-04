.class public Lorg/light/bean/PTBodyAttr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bodyPoint:[[F

.field public classifyConfidence:F

.field public classifyName:Ljava/lang/String;

.field public confidence:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/light/bean/PTBodyAttr;->bodyPoint:[[F

    return-void

    :array_0
    .array-data 4
        0x3b
        0x2
    .end array-data
.end method
