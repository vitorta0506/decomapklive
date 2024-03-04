.class public final Lne/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


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
    iput-object p1, p0, Lne/e;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lne/e;->a:Ljava/io/File;

    return-object v0
.end method
