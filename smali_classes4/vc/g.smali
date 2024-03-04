.class public Lvc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/LoginDelegate;


# instance fields
.field private a:Lcom/linecorp/linesdk/internal/LoginHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/linecorp/linesdk/internal/LoginHandler;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/internal/LoginHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lvc/g;->a:Lcom/linecorp/linesdk/internal/LoginHandler;

    return-void
.end method
