.class public Lt0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 1
    invoke-direct {p0, v0}, Lt0/c$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lt0/c$a;->a:I

    return-void
.end method


# virtual methods
.method public a()Lt0/c;
    .locals 3

    new-instance v0, Lt0/c;

    iget v1, p0, Lt0/c$a;->a:I

    iget-boolean v2, p0, Lt0/c$a;->b:Z

    invoke-direct {v0, v1, v2}, Lt0/c;-><init>(IZ)V

    return-object v0
.end method
