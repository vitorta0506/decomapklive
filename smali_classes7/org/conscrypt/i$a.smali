.class public Lorg/conscrypt/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/conscrypt/i$a;->a:I

    .line 4
    iput p2, p0, Lorg/conscrypt/i$a;->b:I

    .line 5
    iput p3, p0, Lorg/conscrypt/i$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(IIILorg/conscrypt/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/i$a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/conscrypt/i$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/conscrypt/i$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/conscrypt/i$a;->c:I

    return v0
.end method
