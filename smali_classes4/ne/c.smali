.class public Lne/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lne/c;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lne/c;->a:Ljava/io/File;

    return-object v0
.end method
