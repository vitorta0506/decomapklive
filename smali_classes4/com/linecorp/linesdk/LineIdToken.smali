.class public Lcom/linecorp/linesdk/LineIdToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/LineIdToken$Address;,
        Lcom/linecorp/linesdk/LineIdToken$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/LineIdToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final address:Lcom/linecorp/linesdk/LineIdToken$Address;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final amr:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final audience:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final authTime:Ljava/util/Date;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final birthdate:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final email:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final expiresAt:Ljava/util/Date;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final familyName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final familyNamePronunciation:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final gender:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final givenName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final givenNamePronunciation:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final issuedAt:Ljava/util/Date;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final issuer:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final middleName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final nonce:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final picture:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final rawString:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final subject:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$a;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineIdToken$a;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/LineIdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lyc/d;->a(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    .line 31
    invoke-static {p1}, Lyc/d;->a(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    .line 32
    invoke-static {p1}, Lyc/d;->a(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    .line 41
    const-class v0, Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/LineIdToken$Address;

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/linecorp/linesdk/LineIdToken$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/LineIdToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/LineIdToken$b;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->a(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->l(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->o(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->p(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->q(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    .line 9
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->r(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    .line 10
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->s(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    .line 11
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->t(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->u(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    .line 13
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->b(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->c(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->d(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->e(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->f(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->g(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->h(Lcom/linecorp/linesdk/LineIdToken$b;)Lcom/linecorp/linesdk/LineIdToken$Address;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    .line 20
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->i(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->j(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->k(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->m(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/linecorp/linesdk/LineIdToken$b;->n(Lcom/linecorp/linesdk/LineIdToken$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/LineIdToken$b;Lcom/linecorp/linesdk/LineIdToken$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/LineIdToken;-><init>(Lcom/linecorp/linesdk/LineIdToken$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_f

    .line 2
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/LineIdToken;

    .line 3
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 7
    :cond_5
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 9
    :cond_7
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 10
    :cond_9
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_a
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_1
    return v1

    .line 11
    :cond_b
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_c
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    if-eqz v2, :cond_d

    :goto_2
    return v1

    .line 12
    :cond_d
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_3

    :cond_e
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_3
    return v1

    .line 13
    :cond_f
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_4

    :cond_10
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_4
    return v1

    .line 14
    :cond_11
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_5

    :cond_12
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_5
    return v1

    .line 15
    :cond_13
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_6

    :cond_14
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_6
    return v1

    .line 16
    :cond_15
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_7

    :cond_16
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    if-eqz v2, :cond_17

    :goto_7
    return v1

    .line 17
    :cond_17
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_8

    :cond_18
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_8
    return v1

    .line 18
    :cond_19
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {v2, v3}, Lcom/linecorp/linesdk/LineIdToken$Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_9

    :cond_1a
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    if-eqz v2, :cond_1b

    :goto_9
    return v1

    .line 19
    :cond_1b
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_a

    :cond_1c
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_a
    return v1

    .line 20
    :cond_1d
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_b

    :cond_1e
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_b
    return v1

    .line 21
    :cond_1f
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_c

    :cond_20
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_c
    return v1

    .line 22
    :cond_21
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_d

    :cond_22
    iget-object v2, p1, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    if-eqz v2, :cond_23

    :goto_d
    return v1

    .line 23
    :cond_23
    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    iget-object p1, p1, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    if-eqz v2, :cond_24

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e

    :cond_24
    if-nez p1, :cond_25

    goto :goto_e

    :cond_25
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_26
    :goto_f
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken$Address;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineIdToken{rawString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", issuer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subject=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audience=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expiresAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", issuedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nonce=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", amr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", picture=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", birthdate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", givenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", givenNamePronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", middleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", familyName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", familyNamePronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->rawString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->audience:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->expiresAt:Ljava/util/Date;

    invoke-static {p1, v0}, Lyc/d;->c(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 6
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->issuedAt:Ljava/util/Date;

    invoke-static {p1, v0}, Lyc/d;->c(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 7
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->authTime:Ljava/util/Date;

    invoke-static {p1, v0}, Lyc/d;->c(Landroid/os/Parcel;Ljava/util/Date;)V

    .line 8
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->amr:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->picture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->birthdate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/linecorp/linesdk/LineIdToken;->address:Lcom/linecorp/linesdk/LineIdToken$Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->givenNamePronunciation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->middleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/linecorp/linesdk/LineIdToken;->familyNamePronunciation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
