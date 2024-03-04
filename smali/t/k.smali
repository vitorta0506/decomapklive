.class public Lt/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/n;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lt/k;->a:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    iget p1, p0, Lt/k;->a:I

    return p1
.end method
