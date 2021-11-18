#!/usr/bin/perl -w -- 
#
# generated by wxGlade 1.0.1 on Fri Nov 12 18:51:17 2021
#
# To get wxPerl visit http://www.wxperl.it
#

use Wx qw[:allclasses];
use strict;

# begin wxGlade: dependencies
# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package MyCalculator;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;
use Util::H2O qw/h2o/;

my $acc = h2o {}, qw/op lhs/;

sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    # begin wxGlade: MyCalculator::new
    $style = wxDEFAULT_FRAME_STYLE
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->SetSize(Wx::Size->new(308, 231));
    $self->SetTitle("frame");
    
    $self->{grid_sizer_1} = Wx::FlexGridSizer->new(2, 1, 0, 0);
    
    $self->{lcd} = Wx::TextCtrl->new($self, wxID_ANY, "");
    $self->{lcd}->SetMinSize(Wx::Size->new(220, 34));
    $self->{grid_sizer_1}->Add($self->{lcd}, 0, wxALIGN_CENTER|wxALL, 0);
    
    $self->{grid_sizer_2} = Wx::FlexGridSizer->new(4, 4, 2, 2);
    $self->{grid_sizer_1}->Add($self->{grid_sizer_2}, 1, wxEXPAND, 0);
    
    $self->{button_1} = Wx::Button->new($self, wxID_ANY, "1");
    $self->{grid_sizer_2}->Add($self->{button_1}, 0, 0, 0);
    
    $self->{button_2} = Wx::Button->new($self, wxID_ANY, "2");
    $self->{grid_sizer_2}->Add($self->{button_2}, 0, 0, 0);
    
    $self->{button_3} = Wx::Button->new($self, wxID_ANY, "3");
    $self->{grid_sizer_2}->Add($self->{button_3}, 0, 0, 0);
    
    $self->{button_11} = Wx::Button->new($self, wxID_ANY, "+");
    $self->{button_11}->SetMinSize(Wx::Size->new(45, 34));
    $self->{grid_sizer_2}->Add($self->{button_11}, 0, 0, 0);
    
    $self->{button_4} = Wx::Button->new($self, wxID_ANY, "4");
    $self->{grid_sizer_2}->Add($self->{button_4}, 0, 0, 0);
    
    $self->{button_5} = Wx::Button->new($self, wxID_ANY, "5");
    $self->{grid_sizer_2}->Add($self->{button_5}, 0, 0, 0);
    
    $self->{button_6} = Wx::Button->new($self, wxID_ANY, "6");
    $self->{grid_sizer_2}->Add($self->{button_6}, 0, 0, 0);
    
    $self->{button_12} = Wx::Button->new($self, wxID_ANY, "-");
    $self->{button_12}->SetMinSize(Wx::Size->new(45, 34));
    $self->{grid_sizer_2}->Add($self->{button_12}, 0, 0, 0);
    
    $self->{button_7} = Wx::Button->new($self, wxID_ANY, "7");
    $self->{grid_sizer_2}->Add($self->{button_7}, 0, 0, 0);
    
    $self->{button_8} = Wx::Button->new($self, wxID_ANY, "8");
    $self->{grid_sizer_2}->Add($self->{button_8}, 0, 0, 0);
    
    $self->{button_9} = Wx::Button->new($self, wxID_ANY, "9");
    $self->{grid_sizer_2}->Add($self->{button_9}, 0, 0, 0);
    
    $self->{button_13} = Wx::Button->new($self, wxID_ANY, "x");
    $self->{button_13}->SetMinSize(Wx::Size->new(45, 34));
    $self->{grid_sizer_2}->Add($self->{button_13}, 0, 0, 0);
    
    $self->{button_16} = Wx::Button->new($self, wxID_ANY, "C");
    $self->{grid_sizer_2}->Add($self->{button_16}, 0, 0, 0);
    
    $self->{button_10} = Wx::Button->new($self, wxID_ANY, "0");
    $self->{grid_sizer_2}->Add($self->{button_10}, 0, 0, 0);
    
    $self->{button_15} = Wx::Button->new($self, wxID_ANY, "=");
    $self->{grid_sizer_2}->Add($self->{button_15}, 0, 0, 0);
    
    $self->{button_14} = Wx::Button->new($self, wxID_ANY, "/");
    $self->{button_14}->SetMinSize(Wx::Size->new(45, 34));
    $self->{grid_sizer_2}->Add($self->{button_14}, 0, 0, 0);
    
    $self->SetSizer($self->{grid_sizer_1});
    
    $self->Layout();
    Wx::Event::EVT_BUTTON($self, $self->{button_1}->GetId, $self->can('_ONE'));
    Wx::Event::EVT_BUTTON($self, $self->{button_2}->GetId, $self->can('_TWO'));
    Wx::Event::EVT_BUTTON($self, $self->{button_3}->GetId, $self->can('_THREE'));
    Wx::Event::EVT_BUTTON($self, $self->{button_11}->GetId, $self->can('_ADD'));
    Wx::Event::EVT_BUTTON($self, $self->{button_4}->GetId, $self->can('_FOUR'));
    Wx::Event::EVT_BUTTON($self, $self->{button_5}->GetId, $self->can('_FIVE'));
    Wx::Event::EVT_BUTTON($self, $self->{button_6}->GetId, $self->can('_SIX'));
    Wx::Event::EVT_BUTTON($self, $self->{button_12}->GetId, $self->can('_SUBTRACT'));
    Wx::Event::EVT_BUTTON($self, $self->{button_7}->GetId, $self->can('_SEVEN'));
    Wx::Event::EVT_BUTTON($self, $self->{button_8}->GetId, $self->can('_EIGHT'));
    Wx::Event::EVT_BUTTON($self, $self->{button_9}->GetId, $self->can('_NINE'));
    Wx::Event::EVT_BUTTON($self, $self->{button_13}->GetId, $self->can('_MULTIPLY'));
    Wx::Event::EVT_BUTTON($self, $self->{button_16}->GetId, $self->can('_CLEAR_ALL'));
    Wx::Event::EVT_BUTTON($self, $self->{button_10}->GetId, $self->can('_ZERO'));
    Wx::Event::EVT_BUTTON($self, $self->{button_15}->GetId, $self->can('_EQUAL'));
    Wx::Event::EVT_BUTTON($self, $self->{button_14}->GetId, $self->can('_DIVIDE'));

    # end wxGlade
    return $self;

}

sub _ONE {
    my ($self, $event) = @_;
    # wxGlade: MyCalculator::_ONE <event_handler>
    $self->{lcd}->AppendText(1);
    $event->Skip;
    # end wxGlade
}


sub _TWO {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(2);
    # wxGlade: MyCalculator::_TWO <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _THREE {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(3);
    # wxGlade: MyCalculator::_THREE <event_handler>
    $event->Skip;
    # end wxGlade
}

sub load_op {
    my ($self, $op) = @_;
    $acc->lhs($self->{lcd}->GetValue());
    $acc->op($op);
    $self->{lcd}->Clear;
    return;
 }

sub _ADD {
    my ($self, $event) = @_;
    $self->load_op(q{+});
    # wxGlade: MyCalculator::_ADD <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _FOUR {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(4);
    # wxGlade: MyCalculator::_FOUR <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _FIVE {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(5);
    # wxGlade: MyCalculator::_FIVE <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _SIX {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(6);
    # wxGlade: MyCalculator::_SIX <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _SUBTRACT {
    my ($self, $event) = @_;
    $self->load_op(q{-});
    # wxGlade: MyCalculator::_SUBTRACT <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _SEVEN {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(7);
    # wxGlade: MyCalculator::_SEVEN <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _EIGHT {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(8);
    # wxGlade: MyCalculator::_EIGHT <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _NINE {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(9);
    # wxGlade: MyCalculator::_NINE <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _MULTIPLY {
    my ($self, $event) = @_;
    $self->load_op(q{x});
    # wxGlade: MyCalculator::_MULTIPLY <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _CLEAR_ALL {
    my ($self, $event) = @_;
    $self->{lcd}->Clear;
    # wxGlade: MyCalculator::_CLEAR_ALL <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _ZERO {
    my ($self, $event) = @_;
    $self->{lcd}->AppendText(0);
    # wxGlade: MyCalculator::_ZERO <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _EQUAL {
    my ($self, $event) = @_;
    if ($acc->lhs and $acc->op) {
      my $do_op = {
        q{+} => sub { $acc->lhs + $self->{lcd}->GetValue() },
        q{-} => sub { $acc->lhs - $self->{lcd}->GetValue() },
        q{x} => sub { $acc->lhs * $self->{lcd}->GetValue() },
        q{/} => sub { $acc->lhs / $self->{lcd}->GetValue() },
      };
      my $result = $do_op->{$acc->op}->();
      $self->{lcd}->SetValue($result);
      $acc->lhs(undef);
      $acc->op(undef);
    }
    # wxGlade: MyCalculator::_EQUAL <event_handler>
    $event->Skip;
    # end wxGlade
}


sub _DIVIDE {
    my ($self, $event) = @_;
    $self->load_op(q{/});
    # wxGlade: MyCalculator::_DIVIDE <event_handler>
    $event->Skip;
    # end wxGlade
}

# end of class MyCalculator

1;

package MyApp;

use base qw(Wx::App);
use strict;

sub OnInit {
    my( $self ) = shift;

    Wx::InitAllImageHandlers();

    my $frame = MyCalculator->new();

    $self->SetTopWindow($frame);
    $frame->Show(1);

    return 1;
}
# end of class MyApp

package main;

unless(caller){
    my $app = MyApp->new();
    $app->MainLoop();
}
