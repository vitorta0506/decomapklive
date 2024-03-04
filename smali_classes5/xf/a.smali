.class public Lxf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap$CompressFormat;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lxf/b;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lxf/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lxf/a;->a:I

    .line 3
    iput p2, p0, Lxf/a;->b:I

    .line 4
    iput-object p3, p0, Lxf/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    .line 5
    iput p4, p0, Lxf/a;->d:I

    .line 6
    iput-object p5, p0, Lxf/a;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lxf/a;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lxf/a;->g:Lxf/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    iget-object v0, p0, Lxf/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lxf/a;->d:I

    return v0
.end method

.method public c()Lxf/b;
    .locals 1

    iget-object v0, p0, Lxf/a;->g:Lxf/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxf/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxf/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lxf/a;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lxf/a;->b:I

    return v0
.end method
