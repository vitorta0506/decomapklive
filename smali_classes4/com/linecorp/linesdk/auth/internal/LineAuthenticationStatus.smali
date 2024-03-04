.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private oAuthState:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private openIdNonce:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sentRedirectUri:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$a;

    invoke-direct {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$a;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    .line 6
    const-class v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;->values()[Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;->d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    return-void
.end method

.method b()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;->b:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    return-object v0
.end method

.method f()Lcom/linecorp/linesdk/internal/pkce/PKCECode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    return-void
.end method

.method k(Lcom/linecorp/linesdk/internal/pkce/PKCECode;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/internal/pkce/PKCECode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->pkceCode:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->sentRedirectUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->status:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->oAuthState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->openIdNonce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
